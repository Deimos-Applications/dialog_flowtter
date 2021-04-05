import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../context.dart';
import '../intent/intent.dart';
import '../intent/message.dart';
import 'sentiment_analysis_result.dart';

part 'query_result.g.dart';

@JsonSerializable()

/// {@template query_result_template}
/// Represents the result of conversational query or event processing.
///
/// See: https://cloud.google.com/dialogflow/docs/reference/rest/v2/DetectIntentResponse#QueryResult
/// {@endtemplate}
class QueryResult extends Equatable {
  /// The original conversational query text:
  ///
  /// - If natural language text was provided as input, [queryText] contains
  /// a copy of the input.
  ///
  /// - If natural language speech audio was provided as input, [queryText]
  /// contains the speech recognition result. If speech recognizer produced
  /// multiple alternatives, a particular one is picked.
  ///
  /// - If automatic spell correction is enabled, [queryText] will contain the
  /// corrected user input.
  final String? queryText;

  /// The language that was triggered during intent detection.
  /// See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes.
  final String? languageCode;

  /// The Speech recognition confidence between 0.0 and 1.0. A higher
  /// number indicates an estimated greater likelihood that the recognized
  /// words are correct. The default of 0.0 is a sentinel value indicating
  /// that confidence was not set.
  ///
  /// This field is not guaranteed to be accurate or set. In particular this
  /// field isn't set for StreamingDetectIntent since the streaming endpoint
  /// has separate confidence estimates per portion of the audio in
  /// StreamingRecognitionResult.
  final double? speechRecognitionConfidence;

  /// The action name from the matched intent.
  final String? action;

  /// {@template parameters_template}
  /// This is a map of extracted parameters (MapKey, MapValue) pairs:
  ///
  /// - MapKey type: string
  /// - MapKey value: parameter name
  /// - MapValue type:
  ///   - If parameter's entity type is a composite entity: map
  ///   - Else: string or number, depending on parameter value type
  /// - MapValue value:
  ///   - If parameter's entity type is a composite entity: map from
  /// composite entity property names to property values
  ///   - Else: parameter value
  ///
  /// For more details see:
  /// https://cloud.google.com/dialogflow/docs/reference/rest/v2/DetectIntentResponse#QueryResult
  /// {@endtemplate}
  final Map<String, dynamic>? parameters;

  ///	This field is set to:
  ///
  /// - [false] if the matched intent has required parameters and not all
  /// of the required parameter values have been collected.
  ///
  /// - [true] if all required parameter values have been collected, or if the
  /// matched intent doesn't contain any required parameters.
  final bool? allRequiredParamsPresent;

  /// The collection of rich messages to present to the user.
  final List<Message>? fulfillmentMessages;

  /// The collection of output contexts.
  ///
  /// If applicable, [outputContexts.parameters] contains entries with name
  /// [<parameter name>.original] containing the original parameter
  /// values before the query.
  final List<Context>? outputContexts;

  /// The intent that matched the conversational query.
  ///
  /// Some, not all fields are filled in this message, including but
  /// not limited to: [name], [displayName], [endInteraction] and [isFallback].
  final Intent? intent;

  /// The intent detection confidence.
  ///
  /// Values range from 0.0 (completely uncertain) to 1.0 (completely certain).
  ///
  /// This value is for informational purpose only and is only used to help
  /// match the best intent within the classification threshold.
  ///
  /// This value may change for the same end-user expression at any time due
  /// to a model retraining or change in implementation.
  ///
  /// If there are multiple [knowledgeAnswers] messages, this value is set
  /// to the greatest [knowledgeAnswers.match_confidence] value in the list.
  final double? intentDetectionConfidence;

  /// Free-form diagnostic information for the associated detect intent request.
  ///
  /// The fields of this data can change without notice, so you should not
  /// write code that depends on its structure.
  ///
  /// The data may contain:
  ///
  /// - webhook call latency
  /// - webhook errors
  final Map<String, dynamic>? diagnosticInfo;

  /// The sentiment analysis result, which depends on the
  /// [sentimentAnalysisRequestConfig] specified in the request.
  final SentimentAnalysisResult? sentimentAnalysisResult;

  /// {@macro query_result_template}
  QueryResult({
    this.queryText,
    this.languageCode,
    this.speechRecognitionConfidence,
    this.action,
    this.parameters,
    this.allRequiredParamsPresent,
    this.fulfillmentMessages,
    this.outputContexts,
    this.intent,
    this.intentDetectionConfidence,
    this.diagnosticInfo,
    this.sentimentAnalysisResult,
  });

  ///
  factory QueryResult.fromJson(Map<String, dynamic> json) =>
      _$QueryResultFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$QueryResultToJson(this);

  @override
  List<Object?> get props => [
        queryText,
        languageCode,
        speechRecognitionConfidence,
        action,
        parameters,
        allRequiredParamsPresent,
        fulfillmentMessages,
        outputContexts,
        intent,
        intentDetectionConfidence,
        diagnosticInfo,
        sentimentAnalysisResult,
      ];
}
