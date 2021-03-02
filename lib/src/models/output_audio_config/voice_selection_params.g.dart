// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_selection_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoiceSelectionParams _$VoiceSelectionParamsFromJson(Map<String, dynamic> json) {
  return VoiceSelectionParams(
    name: json['name'] as String?,
    ssmlGender:
        _$enumDecodeNullable(_$SsmlVoiceGenderEnumMap, json['ssmlGender']),
  );
}

Map<String, dynamic> _$VoiceSelectionParamsToJson(
    VoiceSelectionParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('ssmlGender', _$SsmlVoiceGenderEnumMap[instance.ssmlGender]);
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

const _$SsmlVoiceGenderEnumMap = {
  SsmlVoiceGender.SSML_VOICE_GENDER_UNSPECIFIED:
      'SSML_VOICE_GENDER_UNSPECIFIED',
  SsmlVoiceGender.SSML_VOICE_GENDER_MALE: 'SSML_VOICE_GENDER_MALE',
  SsmlVoiceGender.SSML_VOICE_GENDER_FEMALE: 'SSML_VOICE_GENDER_FEMALE',
  SsmlVoiceGender.SSML_VOICE_GENDER_NEUTRAL: 'SSML_VOICE_GENDER_NEUTRAL',
};
