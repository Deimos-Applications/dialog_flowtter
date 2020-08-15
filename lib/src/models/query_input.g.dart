// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryInput _$QueryInputFromJson(Map<String, dynamic> json) {
  return QueryInput(
    textInput: json['textInput'] == null
        ? null
        : TextInput.fromJson(json['textInput'] as Map<String, dynamic>),
    eventInput: json['eventInput'] == null
        ? null
        : EventInput.fromJson(json['eventInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryInputToJson(QueryInput instance) =>
    <String, dynamic>{
      'textInput': instance.textInput,
      'eventInput': instance.eventInput,
    };
