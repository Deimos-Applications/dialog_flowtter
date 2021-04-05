// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_item_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectItemInfo _$SelectItemInfoFromJson(Map<String, dynamic> json) {
  return SelectItemInfo(
    key: json['key'] as String?,
    synonyms:
        (json['synonyms'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$SelectItemInfoToJson(SelectItemInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('synonyms', instance.synonyms);
  return val;
}
