// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DialogImage _$DialogImageFromJson(Map<String, dynamic> json) {
  return DialogImage(
    imageUri: json['imageUri'] as String?,
    accessibilityText: json['accessibilityText'] as String?,
  );
}

Map<String, dynamic> _$DialogImageToJson(DialogImage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('imageUri', instance.imageUri);
  writeNotNull('accessibilityText', instance.accessibilityText);
  return val;
}
