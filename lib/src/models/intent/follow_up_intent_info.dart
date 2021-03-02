import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'follow_up_intent_info.g.dart';

@JsonSerializable()

/// {@template follow_up_intent_info_template}
/// Represents a single followup intent in the chain.
/// {@endtemplate}
class FollowUpIntentInfo extends Equatable {
  /// The unique identifier of the followup intent.
  final String? followUpIntentName;

  /// The unique identifier of the followup intent's parent.
  final String? parentFollowUpIntentName;

  /// {@macro follow_up_intent_info_template}
  FollowUpIntentInfo({
    this.followUpIntentName,
    this.parentFollowUpIntentName,
  });

  ///
  factory FollowUpIntentInfo.fromJson(Map<String, dynamic> json) =>
      _$FollowUpIntentInfoFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$FollowUpIntentInfoToJson(this);

  @override
  List<Object?> get props => [
        followUpIntentName,
        parentFollowUpIntentName,
      ];
}
