// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_selection_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoiceSelectionParams _$VoiceSelectionParamsFromJson(Map<String, dynamic> json) {
  return VoiceSelectionParams(
    name: json['name'] as String,
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

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$SsmlVoiceGenderEnumMap = {
  SsmlVoiceGender.SSML_VOICE_GENDER_UNSPECIFIED:
      'SSML_VOICE_GENDER_UNSPECIFIED',
  SsmlVoiceGender.SSML_VOICE_GENDER_MALE: 'SSML_VOICE_GENDER_MALE',
  SsmlVoiceGender.SSML_VOICE_GENDER_FEMALE: 'SSML_VOICE_GENDER_FEMALE',
  SsmlVoiceGender.SSML_VOICE_GENDER_NEUTRAL: 'SSML_VOICE_GENDER_NEUTRAL',
};
