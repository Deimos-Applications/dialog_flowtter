// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_uri_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenUriAction _$OpenUriActionFromJson(Map<String, dynamic> json) {
  return OpenUriAction(
    uri: json['uri'] as String?,
  );
}

Map<String, dynamic> _$OpenUriActionToJson(OpenUriAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uri', instance.uri);
  return val;
}
