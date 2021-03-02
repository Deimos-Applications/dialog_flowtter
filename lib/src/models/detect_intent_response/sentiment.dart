import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sentiment.g.dart';

@JsonSerializable()

/// {@template sentiment_template}
/// The sentiment, such as positive/negative feeling or association,
/// for a unit of analysis, such as the query text.
/// {@endtemplate}
class Sentiment extends Equatable {
  /// Sentiment score between -1.0 (negative sentiment) and 1.0
  /// (positive sentiment).
  final double score;

  /// A non-negative number in the [0, +inf) range, which represents the
  /// absolute magnitude of sentiment, regardless of score
  /// (positive or negative).
  final double magnitude;

  /// {@macro sentiment_template}
  Sentiment({
    required this.score,
    required this.magnitude,
  });

  ///
  factory Sentiment.fromJson(Map<String, dynamic> json) =>
      _$SentimentFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$SentimentToJson(this);

  @override
  List<Object> get props => [
        score,
        magnitude,
      ];
}
