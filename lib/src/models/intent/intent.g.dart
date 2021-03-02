// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Intent _$IntentFromJson(Map<String, dynamic> json) {
  return Intent(
    name: json['name'] as String?,
    displayName: json['displayName'] as String?,
    priority: json['priority'] as int?,
    isFallback: json['isFallback'] as bool?,
    mlDisabled: json['mlDisabled'] as bool?,
    inputContextNames: (json['inputContextNames'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    events:
        (json['events'] as List<dynamic>?)?.map((e) => e as String).toList(),
    action: json['action'] as String?,
    resetContexts: json['resetContexts'] as bool?,
    parameters: (json['parameters'] as List<dynamic>?)
        ?.map((e) => IntentParameter.fromJson(e as Map<String, dynamic>))
        .toList(),
    messages: (json['messages'] as List<dynamic>?)
        ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
        .toList(),
    rootFollowupIntentName: json['rootFollowupIntentName'] as String?,
    parentFollowUpIntentName: json['parentFollowUpIntentName'] as String?,
    followUpIntentInfo: (json['followUpIntentInfo'] as List<dynamic>?)
        ?.map((e) => FollowUpIntentInfo.fromJson(e as Map<String, dynamic>))
        .toList(),
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
  writeNotNull('mlDisabled', instance.mlDisabled);
  writeNotNull('inputContextNames', instance.inputContextNames);
  writeNotNull('events', instance.events);
  writeNotNull('action', instance.action);
  writeNotNull('resetContexts', instance.resetContexts);
  writeNotNull(
      'parameters', instance.parameters?.map((e) => e.toJson()).toList());
  writeNotNull('messages', instance.messages?.map((e) => e.toJson()).toList());
  writeNotNull('rootFollowupIntentName', instance.rootFollowupIntentName);
  writeNotNull('parentFollowUpIntentName', instance.parentFollowUpIntentName);
  writeNotNull('followUpIntentInfo',
      instance.followUpIntentInfo?.map((e) => e.toJson()).toList());
  return val;
}
