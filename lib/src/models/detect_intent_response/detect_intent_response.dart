import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import '../output_audio_config/output_audio_config.dart';
import 'query_result.dart';

part 'detect_intent_response.g.dart';

@JsonSerializable()

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

  /// The audio data bytes encoded as specified in the request.
  ///
  /// Note: The output audio is generated based on the values of default
  /// platform text responses found in the queryResult.fulfillment_messages
  /// field.
  ///
  /// If multiple default text responses exist, they will be concatenated
  ///  when generating audio.
  ///
  /// If no default platform text responses exist, the generated audio content
  /// will be empty.
  ///
  /// In some scenarios, multiple output audio fields may be present in
  /// the response structure.
  ///
  /// In these cases, only the top-most-level audio output has content.
  ///
  /// A base64-encoded string.
  final String outputAudio;

  /// The config used by the speech synthesizer to generate the output audio.
  final OutputAudioConfig outputAudioConfig;

  /// {@macro detect_intent_response_template}
  DetectIntentResponse({
    this.responseId,
    this.queryResult,
    this.outputAudio,
    this.outputAudioConfig,
  });

  ///
  factory DetectIntentResponse.fromJson(Map<String, dynamic> json) =>
      _$DetectIntentResponseFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$DetectIntentResponseToJson(this);

  @override
  List<Object> get props => [
        responseId,
        queryResult,
        outputAudio,
        outputAudioConfig,
      ];
}
