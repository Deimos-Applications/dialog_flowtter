// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intent_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IntentParameter _$IntentParameterFromJson(Map<String, dynamic> json) {
  return IntentParameter(
    name: json['name'] as String?,
    displayName: json['displayName'] as String?,
    value: json['value'] as String?,
    defaultValue: json['defaultValue'] as String?,
    entityTypeDisplayName: json['entityTypeDisplayName'] as String?,
    mandatory: json['mandatory'] as bool?,
    prompts:
        (json['prompts'] as List<dynamic>?)?.map((e) => e as String).toList(),
    isList: json['isList'] as bool?,
  );
}

Map<String, dynamic> _$IntentParameterToJson(IntentParameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('displayName', instance.displayName);
  writeNotNull('value', instance.value);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('entityTypeDisplayName', instance.entityTypeDisplayName);
  writeNotNull('mandatory', instance.mandatory);
  writeNotNull('prompts', instance.prompts);
  writeNotNull('isList', instance.isList);
  return val;
}
