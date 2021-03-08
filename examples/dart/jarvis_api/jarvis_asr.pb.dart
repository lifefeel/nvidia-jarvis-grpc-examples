///
//  Generated code. Do not modify.
//  source: jarvis_asr.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'audio.pbenum.dart' as $1;

class RecognizeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecognizeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'nvidia.jarvis.asr'), createEmptyInstance: create)
    ..aOM<RecognitionConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'config', subBuilder: RecognitionConfig.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'audio', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RecognizeRequest._() : super();
  factory RecognizeRequest({
    RecognitionConfig? config,
    $core.List<$core.int>? audio,
  }) {
    final _result = create();
    if (config != null) {
      _result.config = config;
    }
    if (audio != null) {
      _result.audio = audio;
    }
    return _result;
  }
  factory RecognizeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecognizeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecognizeRequest clone() => RecognizeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecognizeRequest copyWith(void Function(RecognizeRequest) updates) => super.copyWith((message) => updates(message as RecognizeRequest)) as RecognizeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecognizeRequest create() => RecognizeRequest._();
  RecognizeRequest createEmptyInstance() => create();
  static $pb.PbList<RecognizeRequest> createRepeated() => $pb.PbList<RecognizeRequest>();
  @$core.pragma('dart2js:noInline')
  static RecognizeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecognizeRequest>(create);
  static RecognizeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  RecognitionConfig get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(RecognitionConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  RecognitionConfig ensureConfig() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get audio => $_getN(1);
  @$pb.TagNumber(2)
  set audio($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAudio() => $_has(1);
  @$pb.TagNumber(2)
  void clearAudio() => clearField(2);
}

enum StreamingRecognizeRequest_StreamingRequest {
  streamingConfig, 
  audioContent, 
  notSet
}

class StreamingRecognizeRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, StreamingRecognizeRequest_StreamingRequest> _StreamingRecognizeRequest_StreamingRequestByTag = {
    1 : StreamingRecognizeRequest_StreamingRequest.streamingConfig,
    2 : StreamingRecognizeRequest_StreamingRequest.audioContent,
    0 : StreamingRecognizeRequest_StreamingRequest.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamingRecognizeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'nvidia.jarvis.asr'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<StreamingRecognitionConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'streamingConfig', subBuilder: StreamingRecognitionConfig.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'audioContent', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  StreamingRecognizeRequest._() : super();
  factory StreamingRecognizeRequest({
    StreamingRecognitionConfig? streamingConfig,
    $core.List<$core.int>? audioContent,
  }) {
    final _result = create();
    if (streamingConfig != null) {
      _result.streamingConfig = streamingConfig;
    }
    if (audioContent != null) {
      _result.audioContent = audioContent;
    }
    return _result;
  }
  factory StreamingRecognizeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamingRecognizeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamingRecognizeRequest clone() => StreamingRecognizeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamingRecognizeRequest copyWith(void Function(StreamingRecognizeRequest) updates) => super.copyWith((message) => updates(message as StreamingRecognizeRequest)) as StreamingRecognizeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamingRecognizeRequest create() => StreamingRecognizeRequest._();
  StreamingRecognizeRequest createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognizeRequest> createRepeated() => $pb.PbList<StreamingRecognizeRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamingRecognizeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamingRecognizeRequest>(create);
  static StreamingRecognizeRequest? _defaultInstance;

  StreamingRecognizeRequest_StreamingRequest whichStreamingRequest() => _StreamingRecognizeRequest_StreamingRequestByTag[$_whichOneof(0)]!;
  void clearStreamingRequest() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  StreamingRecognitionConfig get streamingConfig => $_getN(0);
  @$pb.TagNumber(1)
  set streamingConfig(StreamingRecognitionConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStreamingConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamingConfig() => clearField(1);
  @$pb.TagNumber(1)
  StreamingRecognitionConfig ensureStreamingConfig() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get audioContent => $_getN(1);
  @$pb.TagNumber(2)
  set audioContent($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAudioContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearAudioContent() => clearField(2);
}

class RecognitionConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecognitionConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'nvidia.jarvis.asr'), createEmptyInstance: create)
    ..e<$1.AudioEncoding>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encoding', $pb.PbFieldType.OE, defaultOrMaker: $1.AudioEncoding.ENCODING_UNSPECIFIED, valueOf: $1.AudioEncoding.valueOf, enumValues: $1.AudioEncoding.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sampleRateHertz', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'languageCode')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxAlternatives', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'audioChannelCount', $pb.PbFieldType.O3)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableWordTimeOffsets')
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableAutomaticPunctuation')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableSeparateRecognitionPerChannel')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'model')
    ..hasRequiredFields = false
  ;

  RecognitionConfig._() : super();
  factory RecognitionConfig({
    $1.AudioEncoding? encoding,
    $core.int? sampleRateHertz,
    $core.String? languageCode,
    $core.int? maxAlternatives,
    $core.int? audioChannelCount,
    $core.bool? enableWordTimeOffsets,
    $core.bool? enableAutomaticPunctuation,
    $core.bool? enableSeparateRecognitionPerChannel,
    $core.String? model,
  }) {
    final _result = create();
    if (encoding != null) {
      _result.encoding = encoding;
    }
    if (sampleRateHertz != null) {
      _result.sampleRateHertz = sampleRateHertz;
    }
    if (languageCode != null) {
      _result.languageCode = languageCode;
    }
    if (maxAlternatives != null) {
      _result.maxAlternatives = maxAlternatives;
    }
    if (audioChannelCount != null) {
      _result.audioChannelCount = audioChannelCount;
    }
    if (enableWordTimeOffsets != null) {
      _result.enableWordTimeOffsets = enableWordTimeOffsets;
    }
    if (enableAutomaticPunctuation != null) {
      _result.enableAutomaticPunctuation = enableAutomaticPunctuation;
    }
    if (enableSeparateRecognitionPerChannel != null) {
      _result.enableSeparateRecognitionPerChannel = enableSeparateRecognitionPerChannel;
    }
    if (model != null) {
      _result.model = model;
    }
    return _result;
  }
  factory RecognitionConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecognitionConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecognitionConfig clone() => RecognitionConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecognitionConfig copyWith(void Function(RecognitionConfig) updates) => super.copyWith((message) => updates(message as RecognitionConfig)) as RecognitionConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecognitionConfig create() => RecognitionConfig._();
  RecognitionConfig createEmptyInstance() => create();
  static $pb.PbList<RecognitionConfig> createRepeated() => $pb.PbList<RecognitionConfig>();
  @$core.pragma('dart2js:noInline')
  static RecognitionConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecognitionConfig>(create);
  static RecognitionConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $1.AudioEncoding get encoding => $_getN(0);
  @$pb.TagNumber(1)
  set encoding($1.AudioEncoding v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEncoding() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncoding() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get sampleRateHertz => $_getIZ(1);
  @$pb.TagNumber(2)
  set sampleRateHertz($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSampleRateHertz() => $_has(1);
  @$pb.TagNumber(2)
  void clearSampleRateHertz() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get languageCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set languageCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLanguageCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearLanguageCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get maxAlternatives => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxAlternatives($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxAlternatives() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxAlternatives() => clearField(4);

  @$pb.TagNumber(7)
  $core.int get audioChannelCount => $_getIZ(4);
  @$pb.TagNumber(7)
  set audioChannelCount($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasAudioChannelCount() => $_has(4);
  @$pb.TagNumber(7)
  void clearAudioChannelCount() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get enableWordTimeOffsets => $_getBF(5);
  @$pb.TagNumber(8)
  set enableWordTimeOffsets($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasEnableWordTimeOffsets() => $_has(5);
  @$pb.TagNumber(8)
  void clearEnableWordTimeOffsets() => clearField(8);

  @$pb.TagNumber(11)
  $core.bool get enableAutomaticPunctuation => $_getBF(6);
  @$pb.TagNumber(11)
  set enableAutomaticPunctuation($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(11)
  $core.bool hasEnableAutomaticPunctuation() => $_has(6);
  @$pb.TagNumber(11)
  void clearEnableAutomaticPunctuation() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get enableSeparateRecognitionPerChannel => $_getBF(7);
  @$pb.TagNumber(12)
  set enableSeparateRecognitionPerChannel($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(12)
  $core.bool hasEnableSeparateRecognitionPerChannel() => $_has(7);
  @$pb.TagNumber(12)
  void clearEnableSeparateRecognitionPerChannel() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get model => $_getSZ(8);
  @$pb.TagNumber(13)
  set model($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(13)
  $core.bool hasModel() => $_has(8);
  @$pb.TagNumber(13)
  void clearModel() => clearField(13);
}

class StreamingRecognitionConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamingRecognitionConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'nvidia.jarvis.asr'), createEmptyInstance: create)
    ..aOM<RecognitionConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'config', subBuilder: RecognitionConfig.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interimResults')
    ..hasRequiredFields = false
  ;

  StreamingRecognitionConfig._() : super();
  factory StreamingRecognitionConfig({
    RecognitionConfig? config,
    $core.bool? interimResults,
  }) {
    final _result = create();
    if (config != null) {
      _result.config = config;
    }
    if (interimResults != null) {
      _result.interimResults = interimResults;
    }
    return _result;
  }
  factory StreamingRecognitionConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamingRecognitionConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamingRecognitionConfig clone() => StreamingRecognitionConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamingRecognitionConfig copyWith(void Function(StreamingRecognitionConfig) updates) => super.copyWith((message) => updates(message as StreamingRecognitionConfig)) as StreamingRecognitionConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionConfig create() => StreamingRecognitionConfig._();
  StreamingRecognitionConfig createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognitionConfig> createRepeated() => $pb.PbList<StreamingRecognitionConfig>();
  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamingRecognitionConfig>(create);
  static StreamingRecognitionConfig? _defaultInstance;

  @$pb.TagNumber(1)
  RecognitionConfig get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(RecognitionConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  RecognitionConfig ensureConfig() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get interimResults => $_getBF(1);
  @$pb.TagNumber(2)
  set interimResults($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInterimResults() => $_has(1);
  @$pb.TagNumber(2)
  void clearInterimResults() => clearField(2);
}

class RecognizeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecognizeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'nvidia.jarvis.asr'), createEmptyInstance: create)
    ..pc<SpeechRecognitionResult>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'results', $pb.PbFieldType.PM, subBuilder: SpeechRecognitionResult.create)
    ..hasRequiredFields = false
  ;

  RecognizeResponse._() : super();
  factory RecognizeResponse({
    $core.Iterable<SpeechRecognitionResult>? results,
  }) {
    final _result = create();
    if (results != null) {
      _result.results.addAll(results);
    }
    return _result;
  }
  factory RecognizeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecognizeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecognizeResponse clone() => RecognizeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecognizeResponse copyWith(void Function(RecognizeResponse) updates) => super.copyWith((message) => updates(message as RecognizeResponse)) as RecognizeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecognizeResponse create() => RecognizeResponse._();
  RecognizeResponse createEmptyInstance() => create();
  static $pb.PbList<RecognizeResponse> createRepeated() => $pb.PbList<RecognizeResponse>();
  @$core.pragma('dart2js:noInline')
  static RecognizeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecognizeResponse>(create);
  static RecognizeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SpeechRecognitionResult> get results => $_getList(0);
}

class SpeechRecognitionResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpeechRecognitionResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'nvidia.jarvis.asr'), createEmptyInstance: create)
    ..pc<SpeechRecognitionAlternative>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alternatives', $pb.PbFieldType.PM, subBuilder: SpeechRecognitionAlternative.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelTag', $pb.PbFieldType.O3)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'audioProcessed', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  SpeechRecognitionResult._() : super();
  factory SpeechRecognitionResult({
    $core.Iterable<SpeechRecognitionAlternative>? alternatives,
    $core.int? channelTag,
    $core.double? audioProcessed,
  }) {
    final _result = create();
    if (alternatives != null) {
      _result.alternatives.addAll(alternatives);
    }
    if (channelTag != null) {
      _result.channelTag = channelTag;
    }
    if (audioProcessed != null) {
      _result.audioProcessed = audioProcessed;
    }
    return _result;
  }
  factory SpeechRecognitionResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeechRecognitionResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeechRecognitionResult clone() => SpeechRecognitionResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeechRecognitionResult copyWith(void Function(SpeechRecognitionResult) updates) => super.copyWith((message) => updates(message as SpeechRecognitionResult)) as SpeechRecognitionResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpeechRecognitionResult create() => SpeechRecognitionResult._();
  SpeechRecognitionResult createEmptyInstance() => create();
  static $pb.PbList<SpeechRecognitionResult> createRepeated() => $pb.PbList<SpeechRecognitionResult>();
  @$core.pragma('dart2js:noInline')
  static SpeechRecognitionResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpeechRecognitionResult>(create);
  static SpeechRecognitionResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SpeechRecognitionAlternative> get alternatives => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get channelTag => $_getIZ(1);
  @$pb.TagNumber(2)
  set channelTag($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChannelTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearChannelTag() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get audioProcessed => $_getN(2);
  @$pb.TagNumber(3)
  set audioProcessed($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAudioProcessed() => $_has(2);
  @$pb.TagNumber(3)
  void clearAudioProcessed() => clearField(3);
}

class SpeechRecognitionAlternative extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpeechRecognitionAlternative', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'nvidia.jarvis.asr'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transcript')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confidence', $pb.PbFieldType.OF)
    ..pc<WordInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'words', $pb.PbFieldType.PM, subBuilder: WordInfo.create)
    ..hasRequiredFields = false
  ;

  SpeechRecognitionAlternative._() : super();
  factory SpeechRecognitionAlternative({
    $core.String? transcript,
    $core.double? confidence,
    $core.Iterable<WordInfo>? words,
  }) {
    final _result = create();
    if (transcript != null) {
      _result.transcript = transcript;
    }
    if (confidence != null) {
      _result.confidence = confidence;
    }
    if (words != null) {
      _result.words.addAll(words);
    }
    return _result;
  }
  factory SpeechRecognitionAlternative.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeechRecognitionAlternative.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeechRecognitionAlternative clone() => SpeechRecognitionAlternative()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeechRecognitionAlternative copyWith(void Function(SpeechRecognitionAlternative) updates) => super.copyWith((message) => updates(message as SpeechRecognitionAlternative)) as SpeechRecognitionAlternative; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpeechRecognitionAlternative create() => SpeechRecognitionAlternative._();
  SpeechRecognitionAlternative createEmptyInstance() => create();
  static $pb.PbList<SpeechRecognitionAlternative> createRepeated() => $pb.PbList<SpeechRecognitionAlternative>();
  @$core.pragma('dart2js:noInline')
  static SpeechRecognitionAlternative getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpeechRecognitionAlternative>(create);
  static SpeechRecognitionAlternative? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transcript => $_getSZ(0);
  @$pb.TagNumber(1)
  set transcript($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTranscript() => $_has(0);
  @$pb.TagNumber(1)
  void clearTranscript() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get confidence => $_getN(1);
  @$pb.TagNumber(2)
  set confidence($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfidence() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfidence() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<WordInfo> get words => $_getList(2);
}

class WordInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WordInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'nvidia.jarvis.asr'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTime', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTime', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'word')
    ..hasRequiredFields = false
  ;

  WordInfo._() : super();
  factory WordInfo({
    $core.int? startTime,
    $core.int? endTime,
    $core.String? word,
  }) {
    final _result = create();
    if (startTime != null) {
      _result.startTime = startTime;
    }
    if (endTime != null) {
      _result.endTime = endTime;
    }
    if (word != null) {
      _result.word = word;
    }
    return _result;
  }
  factory WordInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WordInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WordInfo clone() => WordInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WordInfo copyWith(void Function(WordInfo) updates) => super.copyWith((message) => updates(message as WordInfo)) as WordInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WordInfo create() => WordInfo._();
  WordInfo createEmptyInstance() => create();
  static $pb.PbList<WordInfo> createRepeated() => $pb.PbList<WordInfo>();
  @$core.pragma('dart2js:noInline')
  static WordInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WordInfo>(create);
  static WordInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get startTime => $_getIZ(0);
  @$pb.TagNumber(1)
  set startTime($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTime() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get endTime => $_getIZ(1);
  @$pb.TagNumber(2)
  set endTime($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get word => $_getSZ(2);
  @$pb.TagNumber(3)
  set word($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWord() => $_has(2);
  @$pb.TagNumber(3)
  void clearWord() => clearField(3);
}

class StreamingRecognizeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamingRecognizeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'nvidia.jarvis.asr'), createEmptyInstance: create)
    ..pc<StreamingRecognitionResult>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'results', $pb.PbFieldType.PM, subBuilder: StreamingRecognitionResult.create)
    ..hasRequiredFields = false
  ;

  StreamingRecognizeResponse._() : super();
  factory StreamingRecognizeResponse({
    $core.Iterable<StreamingRecognitionResult>? results,
  }) {
    final _result = create();
    if (results != null) {
      _result.results.addAll(results);
    }
    return _result;
  }
  factory StreamingRecognizeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamingRecognizeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamingRecognizeResponse clone() => StreamingRecognizeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamingRecognizeResponse copyWith(void Function(StreamingRecognizeResponse) updates) => super.copyWith((message) => updates(message as StreamingRecognizeResponse)) as StreamingRecognizeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamingRecognizeResponse create() => StreamingRecognizeResponse._();
  StreamingRecognizeResponse createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognizeResponse> createRepeated() => $pb.PbList<StreamingRecognizeResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamingRecognizeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamingRecognizeResponse>(create);
  static StreamingRecognizeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<StreamingRecognitionResult> get results => $_getList(0);
}

class StreamingRecognitionResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamingRecognitionResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'nvidia.jarvis.asr'), createEmptyInstance: create)
    ..pc<SpeechRecognitionAlternative>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alternatives', $pb.PbFieldType.PM, subBuilder: SpeechRecognitionAlternative.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isFinal')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelTag', $pb.PbFieldType.O3)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'audioProcessed', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  StreamingRecognitionResult._() : super();
  factory StreamingRecognitionResult({
    $core.Iterable<SpeechRecognitionAlternative>? alternatives,
    $core.bool? isFinal,
    $core.int? channelTag,
    $core.double? audioProcessed,
  }) {
    final _result = create();
    if (alternatives != null) {
      _result.alternatives.addAll(alternatives);
    }
    if (isFinal != null) {
      _result.isFinal = isFinal;
    }
    if (channelTag != null) {
      _result.channelTag = channelTag;
    }
    if (audioProcessed != null) {
      _result.audioProcessed = audioProcessed;
    }
    return _result;
  }
  factory StreamingRecognitionResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamingRecognitionResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamingRecognitionResult clone() => StreamingRecognitionResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamingRecognitionResult copyWith(void Function(StreamingRecognitionResult) updates) => super.copyWith((message) => updates(message as StreamingRecognitionResult)) as StreamingRecognitionResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionResult create() => StreamingRecognitionResult._();
  StreamingRecognitionResult createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognitionResult> createRepeated() => $pb.PbList<StreamingRecognitionResult>();
  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamingRecognitionResult>(create);
  static StreamingRecognitionResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SpeechRecognitionAlternative> get alternatives => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get isFinal => $_getBF(1);
  @$pb.TagNumber(2)
  set isFinal($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsFinal() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsFinal() => clearField(2);

  @$pb.TagNumber(5)
  $core.int get channelTag => $_getIZ(2);
  @$pb.TagNumber(5)
  set channelTag($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasChannelTag() => $_has(2);
  @$pb.TagNumber(5)
  void clearChannelTag() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get audioProcessed => $_getN(3);
  @$pb.TagNumber(6)
  set audioProcessed($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasAudioProcessed() => $_has(3);
  @$pb.TagNumber(6)
  void clearAudioProcessed() => clearField(6);
}

