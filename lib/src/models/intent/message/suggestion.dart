import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'suggestion.g.dart';

@JsonSerializable()

/// {@template suggestion_template}
/// The suggestion chip message that the user can tap to quickly post a reply
/// to the conversation.
/// {@endtemplate}
class Suggestion extends Equatable {
  /// The text shown the in the suggestion chip.
  final String? title;

  /// {@macro suggestion_template}
  Suggestion({
    this.title,
  });

  ///
  factory Suggestion.fromJson(Map<String, dynamic> json) =>
      _$SuggestionFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$SuggestionToJson(this);

  @override
  List<Object?> get props => [
        title,
      ];
}
