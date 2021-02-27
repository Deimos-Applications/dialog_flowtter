import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'follow_up_intent_info.dart';
import 'intent_parameter.dart';
import 'message.dart';

part 'intent.g.dart';

@JsonSerializable()

/// {@template intent_template}
/// An intent categorizes an end-user's intention for one conversation turn.
///
/// For each agent, you define many intents, where your combined intents
/// can handle a complete conversation. When an end-user writes or says
/// something, referred to as an end-user expression or end-user input,
/// Dialogflow matches the end-user input to the best intent in your agent.
///
/// Matching an intent is also known as intent classification.
///
/// For more information, see
/// [Intent](https://cloud.google.com/dialogflow/docs/reference/rest/v2/projects.agent.intents#Intent).
/// {@endtemplate}
class Intent extends Equatable {
  /// The unique identifier of the intent
  final String? name;

  /// The name of the intent.
  final String? displayName;

  /// The priority of this intent. Higher numbers represent higher priorities.
  final int? priority;

  /// Indicates whether this is a fallback intent.
  final bool? isFallback;

  /// Indicates whether Machine Learning is disabled for the intent.
  ///
  /// Note: If mlDisabled setting is set to true, then this intent is not
  /// taken into account during inference in ML ONLY match mode. Also,
  /// auto-markup in the UI is turned off.
  final bool? mlDisabled;

  /// The list of context names required for this intent to be triggered.
  ///
  /// Format: projects/<Project ID>/agent/sessions/-/contexts/<Context ID>.
  final List<String>? inputContextNames;

  /// The collection of event names that trigger the intent.
  ///
  /// If the collection of input contexts is not empty, all of the contexts
  /// must be present in the active user session for an event to trigger
  /// this intent.
  ///
  /// Event names are limited to 150 characters.
  final List<String>? events;

  /// The name of the action associated with the intent.
  final String? action;

  /// Indicates whether to delete all contexts in the current session when
  /// this intent is matched.
  final bool? resetContexts;

  /// The collection of parameters associated with the intent.
  final List<IntentParameter>? parameters;

  /// The collection of rich messages corresponding to the [Response] field in
  /// the Dialogflow console.
  final List<Message>? messages;

  /// The unique identifier of the root intent in the chain of followup intents.
  ///
  /// It identifies the correct followup intents chain for this intent.
  final String? rootFollowupIntentName;

  /// The unique identifier of the parent intent in the chain of
  /// followup intents.
  final String? parentFollowUpIntentName;

  /// Information about all followup intents that have this intent as a
  /// direct or indirect parent.
  final List<FollowUpIntentInfo>? followUpIntentInfo;

  /// {@macro intent_template}
  Intent({
    this.name,
    this.displayName,
    this.priority,
    this.isFallback,
    this.mlDisabled,
    this.inputContextNames,
    this.events,
    this.action,
    this.resetContexts,
    this.parameters,
    this.messages,
    this.rootFollowupIntentName,
    this.parentFollowUpIntentName,
    this.followUpIntentInfo,
  });

  ///
  factory Intent.fromJson(Map<String, dynamic> json) => _$IntentFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$IntentToJson(this);

  @override
  List<Object?> get props => [
        name,
        displayName,
        priority,
        isFallback,
        mlDisabled,
        inputContextNames,
        events,
        action,
        resetContexts,
        parameters,
        messages,
        rootFollowupIntentName,
        parentFollowUpIntentName,
        followUpIntentInfo,
      ];
}
