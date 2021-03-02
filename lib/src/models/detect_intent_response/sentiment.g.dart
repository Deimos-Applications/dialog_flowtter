// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentiment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sentiment _$SentimentFromJson(Map<String, dynamic> json) {
  return Sentiment(
    score: (json['score'] as num).toDouble(),
    magnitude: (json['magnitude'] as num).toDouble(),
  );
}

Map<String, dynamic> _$SentimentToJson(Sentiment instance) => <String, dynamic>{
      'score': instance.score,
      'magnitude': instance.magnitude,
    };
