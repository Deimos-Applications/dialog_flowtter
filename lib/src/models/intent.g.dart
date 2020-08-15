// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Intent _$IntentFromJson(Map<String, dynamic> json) {
  return Intent(
    name: json['name'] as String,
    displayName: json['displayName'] as String,
    priority: json['priority'] as int,
    isFallback: json['isFallback'] as bool,
    action: json['action'] as String,
    resetContexts: json['resetContexts'] as bool,
    rootFollowupIntentName: json['rootFollowupIntentName'] as String,
    parentFollowUpIntentName: json['parentFollowUpIntentName'] as String,
    followUpIntentInfo: (json['followUpIntentInfo'] as List)
        ?.map((e) => e == null
            ? null
            : FollowUpIntentInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$IntentToJson(Intent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('displayName', instance.displayName);
  writeNotNull('priority', instance.priority);
  writeNotNull('isFallback', instance.isFallback);
  writeNotNull('action', instance.action);
  writeNotNull('resetContexts', instance.resetContexts);
  writeNotNull('rootFollowupIntentName', instance.rootFollowupIntentName);
  writeNotNull('parentFollowUpIntentName', instance.parentFollowUpIntentName);
  writeNotNull('followUpIntentInfo',
      instance.followUpIntentInfo?.map((e) => e?.toJson())?.toList());
  return val;
}
