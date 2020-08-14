import 'package:equatable/equatable.dart';
import 'output_audio_config.dart';
import 'query_result.dart';

/// {@template detect_intent_response_template}
/// The message returned from the sessions.detectIntent method.
///
/// See: https://cloud.google.com/dialogflow/docs/reference/rest/v2/DetectIntentResponse
/// {@endtemplate}
class DetectIntentResponse extends Equatable {
  /// The unique identifier of the response. It can be used to locate
  /// a response in the training example set or for reporting issues.
  final String responseId;

  /// The selected results of the conversational query or event processing.
  /// See [alternativeQueryResults] for additional potential results.
  final QueryResult queryResult;

  /// The config used by the speech synthesizer to generate the output audio.
  final OutputAudioConfig outputAudioConfig;

  /// {@macro detect_intent_response_template}
  DetectIntentResponse({
    this.responseId,
    this.queryResult,
    this.outputAudioConfig,
  });

  ///
  factory DetectIntentResponse.fromJson(Map<String, dynamic> json) {
    return DetectIntentResponse(
      responseId: json['responseId'],
      queryResult: json['queryResult'] != null
          ? QueryResult.fromJson(json['queryResult'])
          : null,
      outputAudioConfig: json['outputAudioConfig'] != null
          ? OutputAudioConfig.fromJson(json['outputAudioConfig'])
          : null,
    );
  }

  ///
  Map<String, dynamic> toJson() {
    return {
      'responseId': responseId,
      'queryResul': queryResult.toJson(),
      'outputAudioConfig': outputAudioConfig.toJson(),
    };
  }

  @override
  List<Object> get props => [
        responseId,
        queryResult,
        outputAudioConfig,
      ];
}
