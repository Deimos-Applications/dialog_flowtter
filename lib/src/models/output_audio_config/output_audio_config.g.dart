// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output_audio_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OutputAudioConfig _$OutputAudioConfigFromJson(Map<String, dynamic> json) {
  return OutputAudioConfig(
    audioEncoding: _$enumDecodeNullable(
        _$OutputAudioEncodingEnumMap, json['audioEncoding']),
    sampleRateHertz: json['sampleRateHertz'] as int?,
    synthesizeSpeechConfig: json['synthesizeSpeechConfig'] == null
        ? null
        : SynthesizeSpeechConfig.fromJson(
            json['synthesizeSpeechConfig'] as Map<String, dynamic>),
  );
}

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

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
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
