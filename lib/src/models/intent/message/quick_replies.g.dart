// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_replies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuickReplies _$QuickRepliesFromJson(Map<String, dynamic> json) {
  return QuickReplies(
    title: json['title'] as String?,
    quickReplies: (json['quickReplies'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$QuickRepliesToJson(QuickReplies instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('quickReplies', instance.quickReplies);
  return val;
}
