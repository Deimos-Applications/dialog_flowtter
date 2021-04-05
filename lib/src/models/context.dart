import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'context.g.dart';

@JsonSerializable()

/// {@template context_template}
/// Dialogflow contexts are similar to natural language context.
///
/// If a person says to you "they are orange", you need context in order to
/// understand what "they" is referring to. Similarly, for Dialogflow to handle
/// an end-user expression like that, it needs to be provided with context in
/// order to correctly match an intent.
///
/// Using contexts, you can control the flow of a conversation.
///
/// You can configure contexts for an intent by setting input and output
/// contexts, which are identified by string names. When an intent is matched,
/// any configured output contexts for that intent become active.
/// While any contexts are active, Dialogflow is more likely to match intents
/// that are configured with input contexts that correspond to the currently
/// active contexts.
///
///
/// For more information about context, see the
/// [Context](https://cloud.google.com/dialogflow/docs/reference/rest/v2/projects.agent.environments.users.sessions.contexts#Context).
/// {@endtemplate}
class Context extends Equatable {
  /// The unique identifier of the context.
  final String? name;

  /// The number of conversational query requests after which the context
  /// expires. The default is 0.
  ///
  /// If set to 0, the context expires immediately.
  ///
  /// Contexts expire automatically after 20 minutes if there are no
  /// matching queries.
  final int? lifespanCount;

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

  /// {@macro context_template}
  Context({
    this.name,
    this.lifespanCount,
    this.parameters,
  });

  ///
  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$ContextToJson(this);

  @override
  List<Object?> get props => [
        name,
        lifespanCount,
        parameters,
      ];
}
