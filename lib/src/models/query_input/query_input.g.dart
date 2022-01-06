// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryInput _$QueryInputFromJson(Map<String, dynamic> json) => QueryInput(
      text: json['text'] == null
          ? null
          : TextInput.fromJson(json['text'] as Map<String, dynamic>),
      event: json['event'] == null
          ? null
          : EventInput.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryInputToJson(QueryInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text?.toJson());
  writeNotNull('event', instance.event?.toJson());
  return val;
}
