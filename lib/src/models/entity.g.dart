// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entity _$EntityFromJson(Map<String, dynamic> json) {
  return Entity(
    value: json['value'] as String,
    synonyms: (json['synonyms'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$EntityToJson(Entity instance) => <String, dynamic>{
      'value': instance.value,
      'synonyms': instance.synonyms,
    };
