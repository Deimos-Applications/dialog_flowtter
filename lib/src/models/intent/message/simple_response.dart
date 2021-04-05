import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'simple_response.g.dart';

@JsonSerializable()

/// {@template simple_response_template}
/// The simple response message containing speech or text.
/// {@endtemplate}
class SimpleResponse extends Equatable {
  /// One of textToSpeech or ssml must be provided.
  ///
  /// The plain text of the speech output.
  ///
  /// Mutually exclusive with ssml.
  final String? textToSpeech;

  /// One of textToSpeech or ssml must be provided.
  ///
  /// Structured spoken response to the user in the SSML format.
  ///
  /// Mutually exclusive with textToSpeech.
  final String? ssml;

  /// The text to display.
  final String? displayText;

  /// {@macro simple_response_template}
  SimpleResponse({
    this.textToSpeech,
    this.ssml,
    this.displayText,
  });

  ///
  factory SimpleResponse.fromJson(Map<String, dynamic> json) =>
      _$SimpleResponseFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$SimpleResponseToJson(this);

  @override
  List<Object?> get props => [
        textToSpeech,
        ssml,
        displayText,
      ];
}
