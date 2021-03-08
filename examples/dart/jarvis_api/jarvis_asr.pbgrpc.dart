///
//  Generated code. Do not modify.
//  source: jarvis_asr.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'jarvis_asr.pb.dart' as $0;
export 'jarvis_asr.pb.dart';

class JarvisASRClient extends $grpc.Client {
  static final _$recognize =
      $grpc.ClientMethod<$0.RecognizeRequest, $0.RecognizeResponse>(
          '/nvidia.jarvis.asr.JarvisASR/Recognize',
          ($0.RecognizeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RecognizeResponse.fromBuffer(value));
  static final _$streamingRecognize = $grpc.ClientMethod<
          $0.StreamingRecognizeRequest, $0.StreamingRecognizeResponse>(
      '/nvidia.jarvis.asr.JarvisASR/StreamingRecognize',
      ($0.StreamingRecognizeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.StreamingRecognizeResponse.fromBuffer(value));

  JarvisASRClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.RecognizeResponse> recognize(
      $0.RecognizeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recognize, request, options: options);
  }

  $grpc.ResponseStream<$0.StreamingRecognizeResponse> streamingRecognize(
      $async.Stream<$0.StreamingRecognizeRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamingRecognize, request,
        options: options);
  }
}

abstract class JarvisASRServiceBase extends $grpc.Service {
  $core.String get $name => 'nvidia.jarvis.asr.JarvisASR';

  JarvisASRServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RecognizeRequest, $0.RecognizeResponse>(
        'Recognize',
        recognize_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RecognizeRequest.fromBuffer(value),
        ($0.RecognizeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StreamingRecognizeRequest,
            $0.StreamingRecognizeResponse>(
        'StreamingRecognize',
        streamingRecognize,
        true,
        true,
        ($core.List<$core.int> value) =>
            $0.StreamingRecognizeRequest.fromBuffer(value),
        ($0.StreamingRecognizeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.RecognizeResponse> recognize_Pre($grpc.ServiceCall call,
      $async.Future<$0.RecognizeRequest> request) async {
    return recognize(call, await request);
  }

  $async.Future<$0.RecognizeResponse> recognize(
      $grpc.ServiceCall call, $0.RecognizeRequest request);
  $async.Stream<$0.StreamingRecognizeResponse> streamingRecognize(
      $grpc.ServiceCall call,
      $async.Stream<$0.StreamingRecognizeRequest> request);
}
