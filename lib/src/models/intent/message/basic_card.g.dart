// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicCard _$BasicCardFromJson(Map<String, dynamic> json) {
  return BasicCard(
    title: json['title'] as String?,
    subtitle: json['subtitle'] as String?,
    formattedText: json['formattedText'] as String?,
    image: json['image'] == null
        ? null
        : DialogImage.fromJson(json['image'] as Map<String, dynamic>),
    buttons: (json['buttons'] as List<dynamic>?)
        ?.map((e) => BasicCardButton.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$BasicCardToJson(BasicCard instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('subtitle', instance.subtitle);
  writeNotNull('formattedText', instance.formattedText);
  writeNotNull('image', instance.image?.toJson());
  writeNotNull('buttons', instance.buttons?.map((e) => e.toJson()).toList());
  return val;
}
