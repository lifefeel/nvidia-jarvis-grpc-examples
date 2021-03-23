import 'dart:io';
import "package:path/path.dart" show dirname, join;
import 'package:grpc/grpc.dart' as grpc;
import 'jarvis_api/jarvis_asr.pb.dart' as jasr;
import 'jarvis_api/jarvis_asr.pbgrpc.dart';
import 'jarvis_api/audio.pb.dart';

int CHUNK = 1024;

void main() async {
  print('gRPC connecting...');

  final channel = grpc.ClientChannel(
    'localhost',
    port: 50051,
    options: const grpc.ChannelOptions(
        credentials: grpc.ChannelCredentials.insecure()),
  );
  final stub = JarvisASRClient(channel);

  print('gRPC connected.');

  var wavFile = join(dirname(Platform.script.path), '../../wav/sample.wav');
  var file = new File(wavFile);
  RandomAccessFile raf = file.openSync(mode: FileMode.read);
  raf.setPositionSync(0);

  print('The sample wav has been loaded.');

  var config = RecognitionConfig();
  config.encoding = AudioEncoding.LINEAR_PCM;
  config.sampleRateHertz = 16000; // need to read from file
  config.languageCode = "en-US";
  config.maxAlternatives = 1;
  config.enableAutomaticPunctuation = true;
  config.audioChannelCount = 1;

  print('Stream recognizing...');

  var streamingConfig =
      jasr.StreamingRecognitionConfig(config: config, interimResults: true);
  var responses = stub.streamingRecognize(generator(raf, streamingConfig));

  await listenPrintLoop(responses, showIntermediate: true);

  await channel.shutdown();

  return;
}

Stream<StreamingRecognizeRequest> generator(w, s) async* {
  yield jasr.StreamingRecognizeRequest(streamingConfig: s);
  var d = w.readSync(CHUNK);
  while (d.length > 0) {
    yield jasr.StreamingRecognizeRequest(audioContent: d);
    d = w.readSync(CHUNK);
  }
}

listenPrintLoop(responses, {showIntermediate = false}) async {
  int numCharsPrinted = 0;

  await for (var response in responses) {
    if (response.results.isEmpty) {
      continue;
    }

    var result = response.results[0];
    if (result.alternatives.isEmpty) {
      continue;
    }

    var transcript = result.alternatives[0].transcript;

    if (showIntermediate == true) {
      var overwriteChars = ' ' * (numCharsPrinted - transcript.length);

      if (result.isFinal == false) {
        stdout.write(">> " + transcript + overwriteChars + "\r");
        stdout.flush();

        numCharsPrinted = transcript.length + 3;
      } else {
        print("## " + transcript + overwriteChars + "\n");
        numCharsPrinted = 0;
      }
    } else {
      if (result.isFinal == true) {
        print("## ${transcript}\n");
      }
    }
  }
}
