// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_entity_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionEntityType _$SessionEntityTypeFromJson(Map<String, dynamic> json) {
  return SessionEntityType(
    name: json['name'] as String,
    entityOverrideMode: _$enumDecodeNullable(
        _$EntityOverrideModeEnumMap, json['entityOverrideMode']),
    entities: (json['entities'] as List)
        ?.map((e) =>
            e == null ? null : Entity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SessionEntityTypeToJson(SessionEntityType instance) =>
    <String, dynamic>{
      'name': instance.name,
      'entityOverrideMode':
          _$EntityOverrideModeEnumMap[instance.entityOverrideMode],
      'entities': instance.entities,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$EntityOverrideModeEnumMap = {
  EntityOverrideMode.ENTITY_OVERRIDE_MODE_UNSPECIFIED:
      'ENTITY_OVERRIDE_MODE_UNSPECIFIED',
  EntityOverrideMode.ENTITY_OVERRIDE_MODE_OVERRIDE:
      'ENTITY_OVERRIDE_MODE_OVERRIDE',
  EntityOverrideMode.ENTITY_OVERRIDE_MODE_SUPPLEMENT:
      'ENTITY_OVERRIDE_MODE_SUPPLEMENT',
};
