// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryParameters _$QueryParametersFromJson(Map<String, dynamic> json) {
  return QueryParameters(
    timeZone: json['timeZone'] as String,
    geoLocation: json['geoLocation'] == null
        ? null
        : LatLng.fromJson(json['geoLocation'] as Map<String, dynamic>),
    contexts: (json['contexts'] as List)
        ?.map((e) =>
            e == null ? null : Context.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    resetContexts: json['resetContexts'] as bool,
    sessionEntityTypes: (json['sessionEntityTypes'] as List)
        ?.map((e) => e == null
            ? null
            : SessionEntityType.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    payload: json['payload'] as Map<String, dynamic>,
    sentimentAnalysisRequestConfig:
        json['sentimentAnalysisRequestConfig'] == null
            ? null
            : SentimentAnalysisRequestConfig.fromJson(
                json['sentimentAnalysisRequestConfig'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryParametersToJson(QueryParameters instance) =>
    <String, dynamic>{
      'timeZone': instance.timeZone,
      'geoLocation': instance.geoLocation,
      'contexts': instance.contexts,
      'resetContexts': instance.resetContexts,
      'sessionEntityTypes': instance.sessionEntityTypes,
      'payload': instance.payload,
      'sentimentAnalysisRequestConfig': instance.sentimentAnalysisRequestConfig,
    };
