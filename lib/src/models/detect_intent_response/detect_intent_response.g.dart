// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detect_intent_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetectIntentResponse _$DetectIntentResponseFromJson(Map<String, dynamic> json) {
  return DetectIntentResponse(
    responseId: json['responseId'] as String,
    queryResult: json['queryResult'] == null
        ? null
        : QueryResult.fromJson(json['queryResult'] as Map<String, dynamic>),
    outputAudio: json['outputAudio'] as String?,
    outputAudioConfig: json['outputAudioConfig'] == null
        ? null
        : OutputAudioConfig.fromJson(
            json['outputAudioConfig'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DetectIntentResponseToJson(
    DetectIntentResponse instance) {
  final val = <String, dynamic>{
    'responseId': instance.responseId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('queryResult', instance.queryResult?.toJson());
  writeNotNull('outputAudio', instance.outputAudio);
  writeNotNull('outputAudioConfig', instance.outputAudioConfig?.toJson());
  return val;
}
