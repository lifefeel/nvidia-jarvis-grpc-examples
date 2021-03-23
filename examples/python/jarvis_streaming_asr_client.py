# Copyright (c) 2020, NVIDIA CORPORATION. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#  * Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#  * Neither the name of NVIDIA CORPORATION nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
# OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#!/usr/bin/env python

import wave
import sys
import grpc
import time
import argparse

import jarvis_api.audio_pb2 as ja
import jarvis_api.jarvis_asr_pb2 as jasr
import jarvis_api.jarvis_asr_pb2_grpc as jasr_srv


def get_args():
    parser = argparse.ArgumentParser(description="Streaming transcription via Jarvis AI Services")
    parser.add_argument("--num-clients", default=1, type=int, help="Number of client threads")
    parser.add_argument("--num-iterations", default=1, type=int, help="Number of iterations over the file")
    parser.add_argument(
        "--input-file", required=True, type=str, help="Name of the WAV file with LINEAR_PCM encoding to transcribe"
    )
    parser.add_argument(
        "--simulate-realtime", default=False, action='store_true', help="Option to simulate realtime transcription"
    )
    parser.add_argument(
        "--word-time-offsets", default=False, action='store_true', help="Option to output word timestamps"
    )
    parser.add_argument(
        "--max-alternatives",
        default=1,
        type=int,
        help="Maximum number of alternative transcripts to return (up to limit configured on server)",
    )
    parser.add_argument(
        "--automatic-punctuation",
        default=False,
        action='store_true',
        help="Flag that controls if transcript should be automatically punctuated",
    )
    parser.add_argument("--jarvis-uri", default="localhost:50051", type=str, help="URI to access Jarvis server")

    return parser.parse_args()


def print_to_file(responses, output_file, max_alternatives, word_time_offsets):
    start_time = time.time()
    with open(output_file, "w") as f:
        for response in responses:
            if not response.results:
                continue
            result = response.results[0]
            if result.is_final:
                for index, alternative in enumerate(result.alternatives):
                    f.write(
                        "Time %.2fs: Transcript %d: %s\n" % (time.time() - start_time, index, alternative.transcript)
                    )

                if word_time_offsets:
                    f.write("Timestamps:\n")
                    f.write("%-40s %-16s %-16s\n" % ("Word", "Start (ms)", "End (ms)"))
                    for word_info in result.alternatives[0].words:
                        f.write("%-40s %-16.0f %-16.0f\n" % (word_info.word, word_info.start_time, word_info.end_time))

            else:
                f.write(">>>Time %.2fs: %s\n" % (time.time() - start_time, result.alternatives[0].transcript))


def asr_client(
    id,
    output_file,
    input_file,
    num_iterations,
    simulate_realtime,
    jarvis_uri,
    max_alternatives,
    automatic_punctuation,
    word_time_offsets,
):

    CHUNK = 1600
    channel = grpc.insecure_channel(jarvis_uri)
    wf = wave.open(input_file, 'rb')

    frames = wf.getnframes()
    rate = wf.getframerate()
    duration = frames / float(rate)
    if id == 0:
        print("File duration: %.2fs" % duration)

    client = jasr_srv.JarvisASRStub(channel)
    config = jasr.RecognitionConfig(
        encoding=ja.AudioEncoding.LINEAR_PCM,
        sample_rate_hertz=wf.getframerate(),
        language_code="en-US",
        max_alternatives=max_alternatives,
        enable_automatic_punctuation=automatic_punctuation,
        enable_word_time_offsets=word_time_offsets,
    )

    streaming_config = jasr.StreamingRecognitionConfig(config=config, interim_results=True)  # read data

    def generator(w, s, num_iterations, output_file):
        try:
            for i in range(num_iterations):
                w = wave.open(input_file, 'rb')
                start_time = time.time()
                yield jasr.StreamingRecognizeRequest(streaming_config=s)
                num_requests = 0
                while 1:
                    d = w.readframes(CHUNK)
                    if len(d) <= 0:
                        break
                    num_requests += 1
                    if simulate_realtime:
                        time_to_sleep = max(0.0, CHUNK / rate * num_requests - (time.time() - start_time))
                        time.sleep(time_to_sleep)
                    yield jasr.StreamingRecognizeRequest(audio_content=d)
                w.close()
        except Exception as e:
            print(e)

    responses = client.StreamingRecognize(generator(wf, streaming_config, num_iterations, output_file))
    print_to_file(responses, output_file, max_alternatives, word_time_offsets)


from threading import Thread

parser = get_args()

print("Number of clients:", parser.num_clients)
print("Number of iteration:", parser.num_iterations)
print("Input file:", parser.input_file)

threads = []
output_filenames = []
for i in range(parser.num_clients):
    output_filenames.append("output_%d.txt" % i)
    t = Thread(
        target=asr_client,
        args=(
            i,
            output_filenames[-1],
            parser.input_file,
            parser.num_iterations,
            parser.simulate_realtime,
            parser.jarvis_uri,
            parser.max_alternatives,
            parser.automatic_punctuation,
            parser.word_time_offsets,
        ),
    )
    t.start()
    threads.append(t)

for i, t in enumerate(threads):
    t.join()

print(str(parser.num_clients), "threads done, output written to output_<thread_id>.txt")
