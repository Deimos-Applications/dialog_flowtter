import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'link_out_suggestion.g.dart';

@JsonSerializable()

/// {@template link_out_suggestion_template}
/// The suggestion chip message that allows the user to jump out to the app
/// or website associated with this agent.
/// {@endtemplate}
class LinkOutSuggestion extends Equatable {
  /// The name of the app or site this chip is linking to.
  final String? destinationName;

  /// The URI of the app or site to open when the user taps the suggestion chip.
  final String? uri;

  /// {@macro link_out_suggestion_template}
  LinkOutSuggestion({
    this.destinationName,
    this.uri,
  });

  ///
  factory LinkOutSuggestion.fromJson(Map<String, dynamic> json) =>
      _$LinkOutSuggestionFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$LinkOutSuggestionToJson(this);

  @override
  List<Object?> get props => [
        destinationName,
        uri,
      ];
}
