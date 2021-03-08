///
//  Generated code. Do not modify.
//  source: jarvis_asr.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'jarvis_asr.pb.dart' as $1;
import 'jarvis_asr.pbjson.dart';

export 'jarvis_asr.pb.dart';

abstract class JarvisASRServiceBase extends $pb.GeneratedService {
  $async.Future<$1.RecognizeResponse> recognize($pb.ServerContext ctx, $1.RecognizeRequest request);
  $async.Future<$1.StreamingRecognizeResponse> streamingRecognize($pb.ServerContext ctx, $1.StreamingRecognizeRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Recognize': return $1.RecognizeRequest();
      case 'StreamingRecognize': return $1.StreamingRecognizeRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Recognize': return this.recognize(ctx, request as $1.RecognizeRequest);
      case 'StreamingRecognize': return this.streamingRecognize(ctx, request as $1.StreamingRecognizeRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => JarvisASRServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => JarvisASRServiceBase$messageJson;
}

