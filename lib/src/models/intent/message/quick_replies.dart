import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quick_replies.g.dart';

@JsonSerializable()

/// {@template quick_replies_template}
/// The quick replies response message.
/// {@endtemplate}
class QuickReplies extends Equatable {
  /// The title of the collection of quick replies.
  final String? title;

  /// The collection of quick replies.
  final List<String>? quickReplies;

  /// {@macro quick_replies_template}
  QuickReplies({
    this.title,
    this.quickReplies,
  });

  ///
  factory QuickReplies.fromJson(Map<String, dynamic> json) =>
      _$QuickRepliesFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$QuickRepliesToJson(this);

  @override
  List<Object?> get props => [
        title,
        quickReplies,
      ];
}
