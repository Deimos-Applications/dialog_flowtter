// ignore_for_file: avoid_catches_without_on_clauses

import 'dart:convert';
import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../intent/message.dart';
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
  final QueryResult? queryResult;

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
  final String? outputAudio;

  /// The config used by the speech synthesizer to generate the output audio.
  final OutputAudioConfig? outputAudioConfig;

  /// {@macro detect_intent_response_template}
  DetectIntentResponse({
    required this.responseId,
    this.queryResult,
    this.outputAudio,
    this.outputAudioConfig,
  });

  /// Short hand term for the first fullfilment message returned by the agent
  Message? get message {
    if (queryResult == null || queryResult!.fulfillmentMessages!.isEmpty) {
      print("Theres no messages in this response");
      return null;
    }
    return queryResult!.fulfillmentMessages![0];
  }

  /// Short hand term for the first text message returned by the agent
  String? get text {
    if (message?.text == null || message!.text!.text!.isEmpty) {
      print("Theres no texts in this response");
      return null;
    }
    return message!.text!.text![0];
  }

  ///
  factory DetectIntentResponse.fromJson(Map<String, dynamic> json) =>
      _$DetectIntentResponseFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$DetectIntentResponseToJson(this);

  /// Return the bytes of the [outputAudio] base64 encoded String so you can
  /// reproduce the audio
  Uint8List? get outputAudioBytes =>
      outputAudio != null ? base64.decode(outputAudio!) : null;

  @override
  List<Object?> get props => [
        responseId,
        queryResult,
        outputAudio,
        outputAudioConfig,
      ];
}
