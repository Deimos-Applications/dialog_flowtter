// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_card_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicCardButton _$BasicCardButtonFromJson(Map<String, dynamic> json) {
  return BasicCardButton(
    title: json['title'] as String?,
    openUriAction: json['openUriAction'] == null
        ? null
        : OpenUriAction.fromJson(json['openUriAction'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BasicCardButtonToJson(BasicCardButton instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('openUriAction', instance.openUriAction?.toJson());
  return val;
}
