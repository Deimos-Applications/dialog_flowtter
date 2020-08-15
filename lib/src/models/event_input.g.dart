// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventInput _$EventInputFromJson(Map<String, dynamic> json) {
  return EventInput(
    name: json['name'] as String,
    parameters: json['parameters'] as Map<String, dynamic>,
    languageCode: json['languageCode'] as String,
  );
}

Map<String, dynamic> _$EventInputToJson(EventInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parameters': instance.parameters,
      'languageCode': instance.languageCode,
    };
