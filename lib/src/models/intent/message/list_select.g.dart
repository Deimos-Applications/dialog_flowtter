// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_select.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListSelect _$ListSelectFromJson(Map<String, dynamic> json) {
  return ListSelect(
    title: json['title'] as String?,
    subtitle: json['subtitle'] as String?,
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => DialogItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ListSelectToJson(ListSelect instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('subtitle', instance.subtitle);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  return val;
}
