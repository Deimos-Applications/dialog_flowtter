// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_selection_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoiceSelectionParams _$VoiceSelectionParamsFromJson(
        Map<String, dynamic> json) =>
    VoiceSelectionParams(
      name: json['name'] as String?,
      ssmlGender:
          $enumDecodeNullable(_$SsmlVoiceGenderEnumMap, json['ssmlGender']),
    );

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

const _$SsmlVoiceGenderEnumMap = {
  SsmlVoiceGender.SSML_VOICE_GENDER_UNSPECIFIED:
      'SSML_VOICE_GENDER_UNSPECIFIED',
  SsmlVoiceGender.SSML_VOICE_GENDER_MALE: 'SSML_VOICE_GENDER_MALE',
  SsmlVoiceGender.SSML_VOICE_GENDER_FEMALE: 'SSML_VOICE_GENDER_FEMALE',
  SsmlVoiceGender.SSML_VOICE_GENDER_NEUTRAL: 'SSML_VOICE_GENDER_NEUTRAL',
};
