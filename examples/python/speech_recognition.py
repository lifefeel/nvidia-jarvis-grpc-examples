import io
import librosa
import grpc
import sys

sys.path.append('jarvis_api')

# ASR proto
import jarvis_api.jarvis_asr_pb2 as jasr
import jarvis_api.jarvis_asr_pb2_grpc as jasr_srv

import jarvis_api.audio_pb2 as ja

channel = grpc.insecure_channel('localhost:50051')

jarvis_asr = jasr_srv.JarvisASRStub(channel)

path = "../../wav/sample.wav"
audio, sr = librosa.core.load(path, sr=None)
with io.open(path, 'rb') as fh:
    content = fh.read()

    
# Set up an offline/batch recognition request
req = jasr.RecognizeRequest()
req.audio = content                                   # raw bytes
req.config.encoding = ja.AudioEncoding.LINEAR_PCM     # Supports LINEAR_PCM, FLAC, MULAW and ALAW audio encodings
req.config.sample_rate_hertz = sr                     # Audio will be resampled if necessary
req.config.language_code = "en-US"                    # Ignored, will route to correct model in future release
req.config.max_alternatives = 1                       # How many top-N hypotheses to return
req.config.enable_automatic_punctuation = True        # Add punctuation when end of VAD detected
req.config.audio_channel_count = 1                    # Mono channel

response = jarvis_asr.Recognize(req)
asr_best_transcript = response.results[0].alternatives[0].transcript
print("ASR Transcript:", asr_best_transcript)

print("\n\nFull Response Message:")
print(response)
