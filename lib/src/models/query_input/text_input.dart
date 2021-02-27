import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'text_input.g.dart';

@JsonSerializable()

/// {@template text_input_template}
/// Represents the natural language text to be processed.
/// {@endtemplate}
class TextInput extends Equatable {
  /// The UTF-8 encoded natural language text to be processed. Text length
  /// must not exceed 256 characters.
  final String text;

  /// The language of this conversational query.
  ///
  /// See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes.
  ///
  /// Note that queries in the same session do not necessarily need to specify
  /// the same language.
  final String languageCode;

  /// {@macro text_input_template}
  TextInput({
    required this.text,
    this.languageCode = 'en',
  });

  ///
  factory TextInput.fromJson(Map<String, dynamic> json) =>
      _$TextInputFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$TextInputToJson(this);

  @override
  List<Object> get props => [
        text,
        languageCode,
      ];
}
