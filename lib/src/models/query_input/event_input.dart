import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_input.g.dart';

@JsonSerializable()

/// {@template event_input_template}
/// Events allow for matching intents by event name instead of the natural
/// language input.
///
/// For instance, input
/// ```dart
/// Event(
///   name: "welcome_event",
///   parameters: {
///     name: "Sam",
///   },
/// );
/// ```
/// <event: { name: "welcome_event", parameters: { name: "Sam" } }>
/// can trigger a personalized welcome response.
///
/// The parameter name may be used by the agent in the response:
/// "Hello #welcome_event.name! What can I do for you today?".
/// {@endtemplate}
class EventInput extends Equatable {
  /// The unique identifier of the event.
  final String name;

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
  /// https://cloud.google.com/dialogflow/docs/reference/rest/v2/QueryInput#EventInput
  /// {@endtemplate}
  final Map<String, dynamic>? parameters;

  /// The language of this conversational query.
  ///
  /// See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes.
  ///
  /// Note that queries in the same session do not necessarily need to specify
  /// the same language.
  final String languageCode;

  /// {@macro event_input_template}
  EventInput({
    required this.name,
    this.parameters,
    required this.languageCode,
  });

  ///
  factory EventInput.fromJson(Map<String, dynamic> json) =>
      _$EventInputFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$EventInputToJson(this);

  @override
  List<Object?> get props => [
        name,
        parameters,
        languageCode,
      ];
}
