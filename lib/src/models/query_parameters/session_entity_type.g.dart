// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_entity_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionEntityType _$SessionEntityTypeFromJson(Map<String, dynamic> json) =>
    SessionEntityType(
      name: json['name'] as String?,
      entityOverrideMode: $enumDecodeNullable(
          _$EntityOverrideModeEnumMap, json['entityOverrideMode']),
      entities: (json['entities'] as List<dynamic>?)
          ?.map((e) => Entity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SessionEntityTypeToJson(SessionEntityType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('entityOverrideMode',
      _$EntityOverrideModeEnumMap[instance.entityOverrideMode]);
  writeNotNull('entities', instance.entities?.map((e) => e.toJson()).toList());
  return val;
}

const _$EntityOverrideModeEnumMap = {
  EntityOverrideMode.ENTITY_OVERRIDE_MODE_UNSPECIFIED:
      'ENTITY_OVERRIDE_MODE_UNSPECIFIED',
  EntityOverrideMode.ENTITY_OVERRIDE_MODE_OVERRIDE:
      'ENTITY_OVERRIDE_MODE_OVERRIDE',
  EntityOverrideMode.ENTITY_OVERRIDE_MODE_SUPPLEMENT:
      'ENTITY_OVERRIDE_MODE_SUPPLEMENT',
};
