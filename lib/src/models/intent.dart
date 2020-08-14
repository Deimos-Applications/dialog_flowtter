import 'package:equatable/equatable.dart';

import 'follow_up_intent_info.dart';

// TODO: Complete model
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
  final String name;

  /// The name of the intent.
  final String displayName;

  /// The priority of this intent. Higher numbers represent higher priorities.
  final int priority;

  /// Indicates whether this is a fallback intent.
  final bool isFallback;

  /// The name of the action associated with the intent.
  final String action;

  /// Indicates whether to delete all contexts in the current session when
  /// this intent is matched.
  final bool resetContexts;

  /// The unique identifier of the root intent in the chain of followup intents.
  ///
  /// It identifies the correct followup intents chain for this intent.
  final String rootFollowupIntentName;

  /// The unique identifier of the parent intent in the chain of
  /// followup intents.
  final String parentFollowUpIntentName;

  /// Information about all followup intents that have this intent as a
  /// direct or indirect parent.
  final List<FollowUpIntentInfo> followUpIntentInfo;

  /// {@macro intent_template}
  Intent({
    this.name,
    this.displayName,
    this.priority,
    this.isFallback,
    this.action,
    this.resetContexts,
    this.rootFollowupIntentName,
    this.parentFollowUpIntentName,
    this.followUpIntentInfo,
  });

  ///
  factory Intent.fromJson(Map<String, dynamic> json) {
    return Intent(
      name: json['name'],
      displayName: json['displayName'],
      priority: json['priority'],
      isFallback: json['isFallback'],
      action: json['action'],
      resetContexts: json['resetContexts'],
      rootFollowupIntentName: json['rootFollowupIntentName'],
      parentFollowUpIntentName: json['parentFollowupIntentName'],
      followUpIntentInfo: json['followupIntentInfo'],
    );
  }

  ///
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'displayName': displayName,
      'priority': priority,
      'isFallback': isFallback,
      'action': action,
      'resetContexts': resetContexts,
      'rootFollowupIntentName': rootFollowupIntentName,
      'parentFollowupIntentName': parentFollowUpIntentName,
      'followupIntentInfo': followUpIntentInfo,
    };
  }

  @override
  List<Object> get props => [
        name,
        displayName,
        priority,
        isFallback,
        action,
        resetContexts,
        rootFollowupIntentName,
        parentFollowUpIntentName,
        followUpIntentInfo,
      ];
}
