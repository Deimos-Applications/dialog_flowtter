// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentiment_analysis_request_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SentimentAnalysisRequestConfig _$SentimentAnalysisRequestConfigFromJson(
    Map<String, dynamic> json) {
  return SentimentAnalysisRequestConfig(
    analyzeQueryTextSentiment: json['analyzeQueryTextSentiment'] as bool?,
  );
}

Map<String, dynamic> _$SentimentAnalysisRequestConfigToJson(
    SentimentAnalysisRequestConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('analyzeQueryTextSentiment', instance.analyzeQueryTextSentiment);
  return val;
}
