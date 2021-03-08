///
//  Generated code. Do not modify.
//  source: audio.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AudioEncoding extends $pb.ProtobufEnum {
  static const AudioEncoding ENCODING_UNSPECIFIED = AudioEncoding._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ENCODING_UNSPECIFIED');
  static const AudioEncoding LINEAR_PCM = AudioEncoding._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LINEAR_PCM');
  static const AudioEncoding FLAC = AudioEncoding._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FLAC');
  static const AudioEncoding MULAW = AudioEncoding._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MULAW');
  static const AudioEncoding ALAW = AudioEncoding._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALAW');

  static const $core.List<AudioEncoding> values = <AudioEncoding> [
    ENCODING_UNSPECIFIED,
    LINEAR_PCM,
    FLAC,
    MULAW,
    ALAW,
  ];

  static final $core.Map<$core.int, AudioEncoding> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AudioEncoding? valueOf($core.int value) => _byValue[value];

  const AudioEncoding._($core.int v, $core.String n) : super(v, n);
}

