// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_out_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LinkOutSuggestion _$LinkOutSuggestionFromJson(Map<String, dynamic> json) {
  return LinkOutSuggestion(
    destinationName: json['destinationName'] as String?,
    uri: json['uri'] as String?,
  );
}

Map<String, dynamic> _$LinkOutSuggestionToJson(LinkOutSuggestion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('destinationName', instance.destinationName);
  writeNotNull('uri', instance.uri);
  return val;
}
