// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentiment_analysis_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SentimentAnalysisResult _$SentimentAnalysisResultFromJson(
    Map<String, dynamic> json) {
  return SentimentAnalysisResult(
    queryTextSentiment: json['queryTextSentiment'] == null
        ? null
        : Sentiment.fromJson(
            json['queryTextSentiment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SentimentAnalysisResultToJson(
    SentimentAnalysisResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('queryTextSentiment', instance.queryTextSentiment?.toJson());
  return val;
}
