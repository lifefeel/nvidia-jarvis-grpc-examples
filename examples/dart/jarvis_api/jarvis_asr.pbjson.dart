///
//  Generated code. Do not modify.
//  source: jarvis_asr.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use recognizeRequestDescriptor instead')
const RecognizeRequest$json = const {
  '1': 'RecognizeRequest',
  '2': const [
    const {'1': 'config', '3': 1, '4': 1, '5': 11, '6': '.nvidia.jarvis.asr.RecognitionConfig', '10': 'config'},
    const {'1': 'audio', '3': 2, '4': 1, '5': 12, '10': 'audio'},
  ],
};

/// Descriptor for `RecognizeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognizeRequestDescriptor = $convert.base64Decode('ChBSZWNvZ25pemVSZXF1ZXN0EjwKBmNvbmZpZxgBIAEoCzIkLm52aWRpYS5qYXJ2aXMuYXNyLlJlY29nbml0aW9uQ29uZmlnUgZjb25maWcSFAoFYXVkaW8YAiABKAxSBWF1ZGlv');
@$core.Deprecated('Use streamingRecognizeRequestDescriptor instead')
const StreamingRecognizeRequest$json = const {
  '1': 'StreamingRecognizeRequest',
  '2': const [
    const {'1': 'streaming_config', '3': 1, '4': 1, '5': 11, '6': '.nvidia.jarvis.asr.StreamingRecognitionConfig', '9': 0, '10': 'streamingConfig'},
    const {'1': 'audio_content', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'audioContent'},
  ],
  '8': const [
    const {'1': 'streaming_request'},
  ],
};

/// Descriptor for `StreamingRecognizeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamingRecognizeRequestDescriptor = $convert.base64Decode('ChlTdHJlYW1pbmdSZWNvZ25pemVSZXF1ZXN0EloKEHN0cmVhbWluZ19jb25maWcYASABKAsyLS5udmlkaWEuamFydmlzLmFzci5TdHJlYW1pbmdSZWNvZ25pdGlvbkNvbmZpZ0gAUg9zdHJlYW1pbmdDb25maWcSJQoNYXVkaW9fY29udGVudBgCIAEoDEgAUgxhdWRpb0NvbnRlbnRCEwoRc3RyZWFtaW5nX3JlcXVlc3Q=');
@$core.Deprecated('Use recognitionConfigDescriptor instead')
const RecognitionConfig$json = const {
  '1': 'RecognitionConfig',
  '2': const [
    const {'1': 'encoding', '3': 1, '4': 1, '5': 14, '6': '.nvidia.jarvis.AudioEncoding', '10': 'encoding'},
    const {'1': 'sample_rate_hertz', '3': 2, '4': 1, '5': 5, '10': 'sampleRateHertz'},
    const {'1': 'language_code', '3': 3, '4': 1, '5': 9, '10': 'languageCode'},
    const {'1': 'max_alternatives', '3': 4, '4': 1, '5': 5, '10': 'maxAlternatives'},
    const {'1': 'audio_channel_count', '3': 7, '4': 1, '5': 5, '10': 'audioChannelCount'},
    const {'1': 'enable_word_time_offsets', '3': 8, '4': 1, '5': 8, '10': 'enableWordTimeOffsets'},
    const {'1': 'enable_automatic_punctuation', '3': 11, '4': 1, '5': 8, '10': 'enableAutomaticPunctuation'},
    const {'1': 'enable_separate_recognition_per_channel', '3': 12, '4': 1, '5': 8, '10': 'enableSeparateRecognitionPerChannel'},
    const {'1': 'model', '3': 13, '4': 1, '5': 9, '10': 'model'},
  ],
};

/// Descriptor for `RecognitionConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognitionConfigDescriptor = $convert.base64Decode('ChFSZWNvZ25pdGlvbkNvbmZpZxI4CghlbmNvZGluZxgBIAEoDjIcLm52aWRpYS5qYXJ2aXMuQXVkaW9FbmNvZGluZ1IIZW5jb2RpbmcSKgoRc2FtcGxlX3JhdGVfaGVydHoYAiABKAVSD3NhbXBsZVJhdGVIZXJ0ehIjCg1sYW5ndWFnZV9jb2RlGAMgASgJUgxsYW5ndWFnZUNvZGUSKQoQbWF4X2FsdGVybmF0aXZlcxgEIAEoBVIPbWF4QWx0ZXJuYXRpdmVzEi4KE2F1ZGlvX2NoYW5uZWxfY291bnQYByABKAVSEWF1ZGlvQ2hhbm5lbENvdW50EjcKGGVuYWJsZV93b3JkX3RpbWVfb2Zmc2V0cxgIIAEoCFIVZW5hYmxlV29yZFRpbWVPZmZzZXRzEkAKHGVuYWJsZV9hdXRvbWF0aWNfcHVuY3R1YXRpb24YCyABKAhSGmVuYWJsZUF1dG9tYXRpY1B1bmN0dWF0aW9uElQKJ2VuYWJsZV9zZXBhcmF0ZV9yZWNvZ25pdGlvbl9wZXJfY2hhbm5lbBgMIAEoCFIjZW5hYmxlU2VwYXJhdGVSZWNvZ25pdGlvblBlckNoYW5uZWwSFAoFbW9kZWwYDSABKAlSBW1vZGVs');
@$core.Deprecated('Use streamingRecognitionConfigDescriptor instead')
const StreamingRecognitionConfig$json = const {
  '1': 'StreamingRecognitionConfig',
  '2': const [
    const {'1': 'config', '3': 1, '4': 1, '5': 11, '6': '.nvidia.jarvis.asr.RecognitionConfig', '10': 'config'},
    const {'1': 'interim_results', '3': 2, '4': 1, '5': 8, '10': 'interimResults'},
  ],
};

/// Descriptor for `StreamingRecognitionConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamingRecognitionConfigDescriptor = $convert.base64Decode('ChpTdHJlYW1pbmdSZWNvZ25pdGlvbkNvbmZpZxI8CgZjb25maWcYASABKAsyJC5udmlkaWEuamFydmlzLmFzci5SZWNvZ25pdGlvbkNvbmZpZ1IGY29uZmlnEicKD2ludGVyaW1fcmVzdWx0cxgCIAEoCFIOaW50ZXJpbVJlc3VsdHM=');
@$core.Deprecated('Use recognizeResponseDescriptor instead')
const RecognizeResponse$json = const {
  '1': 'RecognizeResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.nvidia.jarvis.asr.SpeechRecognitionResult', '10': 'results'},
  ],
};

/// Descriptor for `RecognizeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognizeResponseDescriptor = $convert.base64Decode('ChFSZWNvZ25pemVSZXNwb25zZRJECgdyZXN1bHRzGAEgAygLMioubnZpZGlhLmphcnZpcy5hc3IuU3BlZWNoUmVjb2duaXRpb25SZXN1bHRSB3Jlc3VsdHM=');
@$core.Deprecated('Use speechRecognitionResultDescriptor instead')
const SpeechRecognitionResult$json = const {
  '1': 'SpeechRecognitionResult',
  '2': const [
    const {'1': 'alternatives', '3': 1, '4': 3, '5': 11, '6': '.nvidia.jarvis.asr.SpeechRecognitionAlternative', '10': 'alternatives'},
    const {'1': 'channel_tag', '3': 2, '4': 1, '5': 5, '10': 'channelTag'},
    const {'1': 'audio_processed', '3': 3, '4': 1, '5': 2, '10': 'audioProcessed'},
  ],
};

/// Descriptor for `SpeechRecognitionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechRecognitionResultDescriptor = $convert.base64Decode('ChdTcGVlY2hSZWNvZ25pdGlvblJlc3VsdBJTCgxhbHRlcm5hdGl2ZXMYASADKAsyLy5udmlkaWEuamFydmlzLmFzci5TcGVlY2hSZWNvZ25pdGlvbkFsdGVybmF0aXZlUgxhbHRlcm5hdGl2ZXMSHwoLY2hhbm5lbF90YWcYAiABKAVSCmNoYW5uZWxUYWcSJwoPYXVkaW9fcHJvY2Vzc2VkGAMgASgCUg5hdWRpb1Byb2Nlc3NlZA==');
@$core.Deprecated('Use speechRecognitionAlternativeDescriptor instead')
const SpeechRecognitionAlternative$json = const {
  '1': 'SpeechRecognitionAlternative',
  '2': const [
    const {'1': 'transcript', '3': 1, '4': 1, '5': 9, '10': 'transcript'},
    const {'1': 'confidence', '3': 2, '4': 1, '5': 2, '10': 'confidence'},
    const {'1': 'words', '3': 3, '4': 3, '5': 11, '6': '.nvidia.jarvis.asr.WordInfo', '10': 'words'},
  ],
};

/// Descriptor for `SpeechRecognitionAlternative`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechRecognitionAlternativeDescriptor = $convert.base64Decode('ChxTcGVlY2hSZWNvZ25pdGlvbkFsdGVybmF0aXZlEh4KCnRyYW5zY3JpcHQYASABKAlSCnRyYW5zY3JpcHQSHgoKY29uZmlkZW5jZRgCIAEoAlIKY29uZmlkZW5jZRIxCgV3b3JkcxgDIAMoCzIbLm52aWRpYS5qYXJ2aXMuYXNyLldvcmRJbmZvUgV3b3Jkcw==');
@$core.Deprecated('Use wordInfoDescriptor instead')
const WordInfo$json = const {
  '1': 'WordInfo',
  '2': const [
    const {'1': 'start_time', '3': 1, '4': 1, '5': 5, '10': 'startTime'},
    const {'1': 'end_time', '3': 2, '4': 1, '5': 5, '10': 'endTime'},
    const {'1': 'word', '3': 3, '4': 1, '5': 9, '10': 'word'},
  ],
};

/// Descriptor for `WordInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wordInfoDescriptor = $convert.base64Decode('CghXb3JkSW5mbxIdCgpzdGFydF90aW1lGAEgASgFUglzdGFydFRpbWUSGQoIZW5kX3RpbWUYAiABKAVSB2VuZFRpbWUSEgoEd29yZBgDIAEoCVIEd29yZA==');
@$core.Deprecated('Use streamingRecognizeResponseDescriptor instead')
const StreamingRecognizeResponse$json = const {
  '1': 'StreamingRecognizeResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.nvidia.jarvis.asr.StreamingRecognitionResult', '10': 'results'},
  ],
};

/// Descriptor for `StreamingRecognizeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamingRecognizeResponseDescriptor = $convert.base64Decode('ChpTdHJlYW1pbmdSZWNvZ25pemVSZXNwb25zZRJHCgdyZXN1bHRzGAEgAygLMi0ubnZpZGlhLmphcnZpcy5hc3IuU3RyZWFtaW5nUmVjb2duaXRpb25SZXN1bHRSB3Jlc3VsdHM=');
@$core.Deprecated('Use streamingRecognitionResultDescriptor instead')
const StreamingRecognitionResult$json = const {
  '1': 'StreamingRecognitionResult',
  '2': const [
    const {'1': 'alternatives', '3': 1, '4': 3, '5': 11, '6': '.nvidia.jarvis.asr.SpeechRecognitionAlternative', '10': 'alternatives'},
    const {'1': 'is_final', '3': 2, '4': 1, '5': 8, '10': 'isFinal'},
    const {'1': 'channel_tag', '3': 5, '4': 1, '5': 5, '10': 'channelTag'},
    const {'1': 'audio_processed', '3': 6, '4': 1, '5': 2, '10': 'audioProcessed'},
  ],
};

/// Descriptor for `StreamingRecognitionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamingRecognitionResultDescriptor = $convert.base64Decode('ChpTdHJlYW1pbmdSZWNvZ25pdGlvblJlc3VsdBJTCgxhbHRlcm5hdGl2ZXMYASADKAsyLy5udmlkaWEuamFydmlzLmFzci5TcGVlY2hSZWNvZ25pdGlvbkFsdGVybmF0aXZlUgxhbHRlcm5hdGl2ZXMSGQoIaXNfZmluYWwYAiABKAhSB2lzRmluYWwSHwoLY2hhbm5lbF90YWcYBSABKAVSCmNoYW5uZWxUYWcSJwoPYXVkaW9fcHJvY2Vzc2VkGAYgASgCUg5hdWRpb1Byb2Nlc3NlZA==');
