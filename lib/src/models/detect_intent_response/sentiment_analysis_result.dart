import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'sentiment.dart';

part 'sentiment_analysis_result.g.dart';

@JsonSerializable()

/// {@template sentiment_analysis_result_template}
/// The result of sentiment analysis.
///
/// Sentiment analysis inspects user input and identifies the prevailing
/// subjective opinion, especially to determine a user's attitude as positive,
/// negative, or neutral.
///
/// For [Participants.AnalyzeContent], it needs to be configured in
/// [DetectIntentRequest.query_params].
///
/// For [Participants.StreamingAnalyzeContent], it needs to be configured in
/// [StreamingDetectIntentRequest.query_params].
///
/// And for [Participants.AnalyzeContent] and
/// [Participants.StreamingAnalyzeContent], it needs to be configured in
/// [ConversationProfile.human_agent_assistant_config]
///
/// See: [SentimentAnalysisResult](https://cloud.google.com/dialogflow/docs/reference/rest/v2/DetectIntentResponse#sentimentanalysisresult)
/// {@endtemplate}
class SentimentAnalysisResult extends Equatable {
  /// The sentiment analysis result for [queryText].
  final Sentiment? queryTextSentiment;

  /// {@macro sentiment_analysis_result_template}
  SentimentAnalysisResult({
    this.queryTextSentiment,
  });

  ///
  factory SentimentAnalysisResult.fromJson(Map<String, dynamic> json) =>
      _$SentimentAnalysisResultFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$SentimentAnalysisResultToJson(this);

  @override
  List<Object?> get props => [
        queryTextSentiment,
      ];
}
