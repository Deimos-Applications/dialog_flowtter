// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DialogItem _$DialogItemFromJson(Map<String, dynamic> json) {
  return DialogItem(
    info: json['info'] == null
        ? null
        : SelectItemInfo.fromJson(json['info'] as Map<String, dynamic>),
    title: json['title'] as String?,
    description: json['description'] as String?,
    image: json['image'] == null
        ? null
        : DialogImage.fromJson(json['image'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DialogItemToJson(DialogItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('info', instance.info?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('image', instance.image?.toJson());
  return val;
}
