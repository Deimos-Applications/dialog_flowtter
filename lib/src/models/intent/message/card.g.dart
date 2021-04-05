// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DialogCard _$DialogCardFromJson(Map<String, dynamic> json) {
  return DialogCard(
    title: json['title'] as String?,
    subtitle: json['subtitle'] as String?,
    imageUri: json['imageUri'] as String?,
    buttons: (json['buttons'] as List<dynamic>?)
        ?.map((e) => CardButton.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DialogCardToJson(DialogCard instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('subtitle', instance.subtitle);
  writeNotNull('imageUri', instance.imageUri);
  writeNotNull('buttons', instance.buttons?.map((e) => e.toJson()).toList());
  return val;
}
