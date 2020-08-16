// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextInput _$TextInputFromJson(Map<String, dynamic> json) {
  return TextInput(
    text: json['text'] as String,
    languageCode: json['languageCode'] as String,
  );
}

Map<String, dynamic> _$TextInputToJson(TextInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('languageCode', instance.languageCode);
  return val;
}
