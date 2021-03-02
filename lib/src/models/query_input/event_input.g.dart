// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventInput _$EventInputFromJson(Map<String, dynamic> json) {
  return EventInput(
    name: json['name'] as String,
    parameters: json['parameters'] as Map<String, dynamic>?,
    languageCode: json['languageCode'] as String,
  );
}

Map<String, dynamic> _$EventInputToJson(EventInput instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parameters', instance.parameters);
  val['languageCode'] = instance.languageCode;
  return val;
}
