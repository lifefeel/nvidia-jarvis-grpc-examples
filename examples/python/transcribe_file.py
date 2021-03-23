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

import argparse
import wave
import sys
import grpc
import time
import jarvis_api.audio_pb2 as ja
import jarvis_api.jarvis_asr_pb2 as jasr
import jarvis_api.jarvis_asr_pb2_grpc as jasr_srv


def get_args():
    parser = argparse.ArgumentParser(description="Streaming transcription via Jarvis AI Services")
    parser.add_argument("--server", default="localhost:50051", type=str, help="URI to GRPC server endpoint")
    parser.add_argument("--audio-file", required=True, help="path to local file to stream")
    parser.add_argument(
        "--show-intermediate", action="store_true", help="show intermediate transcripts as they are available"
    )
    return parser.parse_args()


def listen_print_loop(responses, show_intermediate=False):
    num_chars_printed = 0
    idx = 0
    for response in responses:
        idx += 1
        if not response.results:
            continue

        result = response.results[0]
        if not result.alternatives:
            continue

        transcript = result.alternatives[0].transcript

        if show_intermediate:
            overwrite_chars = ' ' * (num_chars_printed - len(transcript))

            if not result.is_final:
                sys.stdout.write(">> " + transcript + overwrite_chars + '\r')
                sys.stdout.flush()

                num_chars_printed = len(transcript) + 3

            else:
                print("## " + transcript + overwrite_chars + "\n")
                num_chars_printed = 0
        else:
            if result.is_final:
                print(f"## {transcript.encode('utf-8')}\n")
                sys.stdout.buffer.write(transcript.encode('utf-8'))


CHUNK = 1024
args = get_args()
wf = wave.open(args.audio_file, 'rb')

channel = grpc.insecure_channel(args.server)
client = jasr_srv.JarvisASRStub(channel)
config = jasr.RecognitionConfig(
    encoding=ja.AudioEncoding.LINEAR_PCM,
    sample_rate_hertz=wf.getframerate(),
    language_code="en-US",
    max_alternatives=1,
    enable_automatic_punctuation=True,
)
streaming_config = jasr.StreamingRecognitionConfig(config=config, interim_results=True)

# read data


def generator(w, s):
    yield jasr.StreamingRecognizeRequest(streaming_config=s)
    d = w.readframes(CHUNK)
    while len(d) > 0:
        yield jasr.StreamingRecognizeRequest(audio_content=d)
        d = w.readframes(CHUNK)


responses = client.StreamingRecognize(generator(wf, streaming_config))
listen_print_loop(responses, show_intermediate=args.show_intermediate)
