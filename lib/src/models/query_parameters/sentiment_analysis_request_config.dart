import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sentiment_analysis_request_config.g.dart';

@JsonSerializable()

/// {@template sentiment_analysis_request_config_template}
/// Configures the types of sentiment analysis to perform.
/// {@endtemplate}
class SentimentAnalysisRequestConfig extends Equatable {
  /// Instructs the service to perform sentiment analysis on queryText.
  ///
  /// If not provided, sentiment analysis is not performed on queryText.
  final bool? analyzeQueryTextSentiment;

  /// {@macro sentiment_analysis_request_config_template}
  SentimentAnalysisRequestConfig({
    this.analyzeQueryTextSentiment = false,
  });

  ///
  factory SentimentAnalysisRequestConfig.fromJson(Map<String, dynamic> json) =>
      _$SentimentAnalysisRequestConfigFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$SentimentAnalysisRequestConfigToJson(this);

  @override
  List<Object?> get props => [
        analyzeQueryTextSentiment,
      ];
}
