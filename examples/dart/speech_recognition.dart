import 'dart:io';
import 'package:grpc/grpc.dart';
import 'jarvis_api/jarvis_asr.pb.dart';
import 'jarvis_api/jarvis_asr.pbgrpc.dart';
import 'jarvis_api/audio.pb.dart';
    
Future<void> main(List<String> args) async {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final stub = JarvisASRClient(channel);

  final file = new File('../../wav/sample.wav');
  List<int> inputStream = file.readAsBytesSync();

  final name = args.isNotEmpty ? args[0] : 'world';

  var config = RecognitionConfig();
  config.encoding = AudioEncoding.LINEAR_PCM;
  config.sampleRateHertz = 16000;
  config.languageCode = "en-US";
  config.maxAlternatives = 1;
  config.enableAutomaticPunctuation = true;
  config.audioChannelCount = 1;
    
  var req = RecognizeRequest();
  req.audio = inputStream;
  req.config = config;
      
  try {
    var response = await stub.recognize(req);
    print('ASR Transcript: ${response.results[0].alternatives[0].transcript}');
    print('\n\nFull Response Message\n: ${response}');
    
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
}