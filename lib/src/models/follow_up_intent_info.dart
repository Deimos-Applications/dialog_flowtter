import 'package:equatable/equatable.dart';

/// {@template follow_up_intent_info_template}
/// Represents a single followup intent in the chain.
/// {@endtemplate}
class FollowUpIntentInfo extends Equatable {
  /// The unique identifier of the followup intent.
  final String followUpIntentName;

  /// The unique identifier of the followup intent's parent.
  final String parentFollowUpIntentName;

  /// {@macro follow_up_intent_info_template}
  FollowUpIntentInfo({
    this.followUpIntentName,
    this.parentFollowUpIntentName,
  });

  ///
  factory FollowUpIntentInfo.fromJson(Map<String, dynamic> json) {
    return FollowUpIntentInfo(
      followUpIntentName: json['followupIntentName'],
      parentFollowUpIntentName: json['parentFollowupIntentName'],
    );
  }

  ///
  Map<String, dynamic> toJson() {
    return {
      'followupIntentName': followUpIntentName,
      'parentFollowupIntentName': parentFollowUpIntentName,
    };
  }

  @override
  List<Object> get props => [
        followUpIntentName,
        parentFollowUpIntentName,
      ];
}
