// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardButton _$CardButtonFromJson(Map<String, dynamic> json) {
  return CardButton(
    text: json['text'] as String?,
    postback: json['postback'] as String?,
  );
}

Map<String, dynamic> _$CardButtonToJson(CardButton instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('postback', instance.postback);
  return val;
}
