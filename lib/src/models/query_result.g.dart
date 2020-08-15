// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryResult _$QueryResultFromJson(Map<String, dynamic> json) {
  return QueryResult(
    queryText: json['queryText'] as String,
    languageCode: json['languageCode'] as String,
    speechRecognitionConfidence:
        (json['speechRecognitionConfidence'] as num)?.toDouble(),
    action: json['action'] as String,
    parameters: json['parameters'] as Map<String, dynamic>,
    allRequiredParamsPresent: json['allRequiredParamsPresent'] as bool,
    fulfillmentMessages: (json['fulfillmentMessages'] as List)
        ?.map((e) =>
            e == null ? null : Message.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    outputContexts: (json['outputContexts'] as List)
        ?.map((e) =>
            e == null ? null : Context.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    intent: json['intent'] == null
        ? null
        : Intent.fromJson(json['intent'] as Map<String, dynamic>),
    intentDetectionConfidence:
        (json['intentDetectionConfidence'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$QueryResultToJson(QueryResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('queryText', instance.queryText);
  writeNotNull('languageCode', instance.languageCode);
  writeNotNull(
      'speechRecognitionConfidence', instance.speechRecognitionConfidence);
  writeNotNull('action', instance.action);
  writeNotNull('parameters', instance.parameters);
  writeNotNull('allRequiredParamsPresent', instance.allRequiredParamsPresent);
  writeNotNull('fulfillmentMessages',
      instance.fulfillmentMessages?.map((e) => e?.toJson())?.toList());
  writeNotNull('outputContexts',
      instance.outputContexts?.map((e) => e?.toJson())?.toList());
  writeNotNull('intent', instance.intent?.toJson());
  writeNotNull('intentDetectionConfidence', instance.intentDetectionConfidence);
  return val;
}