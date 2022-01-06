// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output_audio_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OutputAudioConfig _$OutputAudioConfigFromJson(Map<String, dynamic> json) =>
    OutputAudioConfig(
      audioEncoding: $enumDecodeNullable(
              _$OutputAudioEncodingEnumMap, json['audioEncoding']) ??
          OutputAudioEncoding.OUTPUT_AUDIO_ENCODING_LINEAR_16,
      sampleRateHertz: json['sampleRateHertz'] as int?,
      synthesizeSpeechConfig: json['synthesizeSpeechConfig'] == null
          ? null
          : SynthesizeSpeechConfig.fromJson(
              json['synthesizeSpeechConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OutputAudioConfigToJson(OutputAudioConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'audioEncoding', _$OutputAudioEncodingEnumMap[instance.audioEncoding]);
  writeNotNull('sampleRateHertz', instance.sampleRateHertz);
  writeNotNull(
      'synthesizeSpeechConfig', instance.synthesizeSpeechConfig?.toJson());
  return val;
}

const _$OutputAudioEncodingEnumMap = {
  OutputAudioEncoding.OUTPUT_AUDIO_ENCODING_UNSPECIFIED:
      'OUTPUT_AUDIO_ENCODING_UNSPECIFIED',
  OutputAudioEncoding.OUTPUT_AUDIO_ENCODING_LINEAR_16:
      'OUTPUT_AUDIO_ENCODING_LINEAR_16',
  OutputAudioEncoding.OUTPUT_AUDIO_ENCODING_MP3: 'OUTPUT_AUDIO_ENCODING_MP3',
  OutputAudioEncoding.OUTPUT_AUDIO_ENCODING_OGG_OPUS:
      'OUTPUT_AUDIO_ENCODING_OGG_OPUS',
};
