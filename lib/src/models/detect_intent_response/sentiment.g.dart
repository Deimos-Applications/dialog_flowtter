// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentiment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sentiment _$SentimentFromJson(Map<String, dynamic> json) {
  return Sentiment(
    score: (json['score'] as num?)?.toDouble(),
    magnitude: (json['magnitude'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$SentimentToJson(Sentiment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('score', instance.score);
  writeNotNull('magnitude', instance.magnitude);
  return val;
}
