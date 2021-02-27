// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleResponse _$SimpleResponseFromJson(Map<String, dynamic> json) {
  return SimpleResponse(
    textToSpeech: json['textToSpeech'] as String?,
    ssml: json['ssml'] as String?,
    displayText: json['displayText'] as String?,
  );
}

Map<String, dynamic> _$SimpleResponseToJson(SimpleResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('textToSpeech', instance.textToSpeech);
  writeNotNull('ssml', instance.ssml);
  writeNotNull('displayText', instance.displayText);
  return val;
}
