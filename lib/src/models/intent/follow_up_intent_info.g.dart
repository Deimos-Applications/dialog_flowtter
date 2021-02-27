// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_up_intent_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowUpIntentInfo _$FollowUpIntentInfoFromJson(Map<String, dynamic> json) {
  return FollowUpIntentInfo(
    followUpIntentName: json['followUpIntentName'] as String?,
    parentFollowUpIntentName: json['parentFollowUpIntentName'] as String?,
  );
}

Map<String, dynamic> _$FollowUpIntentInfoToJson(FollowUpIntentInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('followUpIntentName', instance.followUpIntentName);
  writeNotNull('parentFollowUpIntentName', instance.parentFollowUpIntentName);
  return val;
}
