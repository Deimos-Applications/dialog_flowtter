import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'event_input.dart';
import 'text_input.dart';

part 'query_input.g.dart';

@JsonSerializable()

/// {@template query_input_template}
/// Represents the query input. It can contain either:
///
/// 1. An audio config which instructs the speech recognizer how to process the
/// speech audio.
///
/// 2. A conversational query in the form of text,.
///
/// 3. An event that specifies which intent to trigger.
/// {@endtemplate}
class QueryInput extends Equatable {
  // TODO: Add audioConfig option
  // https://cloud.google.com/dialogflow/es/docs/reference/rest/v2beta1/QueryInput

  /// The natural language text to be processed.
  final TextInput? text;

  /// The event to be processed.
  final EventInput? eventInput;

  /// {@macro query_input_template}
  QueryInput({
    this.text,
    this.eventInput,
  });

  ///
  factory QueryInput.fromJson(Map<String, dynamic> json) =>
      _$QueryInputFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$QueryInputToJson(this);

  @override
  List<Object?> get props => [
        text,
        eventInput,
      ];
}
