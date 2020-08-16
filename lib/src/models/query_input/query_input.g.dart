// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryInput _$QueryInputFromJson(Map<String, dynamic> json) {
  return QueryInput(
    text: json['text'] == null
        ? null
        : TextInput.fromJson(json['text'] as Map<String, dynamic>),
    eventInput: json['eventInput'] == null
        ? null
        : EventInput.fromJson(json['eventInput'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryInputToJson(QueryInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text?.toJson());
  writeNotNull('eventInput', instance.eventInput?.toJson());
  return val;
}
