// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryParameters _$QueryParametersFromJson(Map<String, dynamic> json) {
  return QueryParameters(
    timeZone: json['timeZone'] as String?,
    geoLocation: json['geoLocation'] == null
        ? null
        : LatLng.fromJson(json['geoLocation'] as Map<String, dynamic>),
    contexts: (json['contexts'] as List<dynamic>?)
        ?.map((e) => Context.fromJson(e as Map<String, dynamic>))
        .toList(),
    resetContexts: json['resetContexts'] as bool?,
    sessionEntityTypes: (json['sessionEntityTypes'] as List<dynamic>?)
        ?.map((e) => SessionEntityType.fromJson(e as Map<String, dynamic>))
        .toList(),
    payload: json['payload'] as Map<String, dynamic>?,
    sentimentAnalysisRequestConfig:
        json['sentimentAnalysisRequestConfig'] == null
            ? null
            : SentimentAnalysisRequestConfig.fromJson(
                json['sentimentAnalysisRequestConfig'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryParametersToJson(QueryParameters instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('timeZone', instance.timeZone);
  writeNotNull('geoLocation', instance.geoLocation?.toJson());
  writeNotNull('contexts', instance.contexts?.map((e) => e.toJson()).toList());
  writeNotNull('resetContexts', instance.resetContexts);
  writeNotNull('sessionEntityTypes',
      instance.sessionEntityTypes?.map((e) => e.toJson()).toList());
  writeNotNull('payload', instance.payload);
  writeNotNull('sentimentAnalysisRequestConfig',
      instance.sentimentAnalysisRequestConfig?.toJson());
  return val;
}
