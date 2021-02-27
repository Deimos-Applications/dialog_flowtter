// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_select.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarouselSelect _$CarouselSelectFromJson(Map<String, dynamic> json) {
  return CarouselSelect(
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => DialogItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CarouselSelectToJson(CarouselSelect instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  return val;
}
