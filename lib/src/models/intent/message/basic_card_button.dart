import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'open_uri_action.dart';

part 'basic_card_button.g.dart';

@JsonSerializable()

/// {@template basic_card_button_template}
/// The button object that appears at the bottom of a basic card.
/// {@endtemplate}
class BasicCardButton extends Equatable {
  /// The title of the button.
  final String? title;

  /// Action to take when a user taps on the button.
  final OpenUriAction? openUriAction;

  /// {@macro basic_card_button_template}
  BasicCardButton({
    this.title,
    this.openUriAction,
  });

  ///
  factory BasicCardButton.fromJson(Map<String, dynamic> json) =>
      _$BasicCardButtonFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$BasicCardButtonToJson(this);

  @override
  List<Object?> get props => [
        title,
        openUriAction,
      ];
}
