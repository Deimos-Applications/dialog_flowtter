import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'card_button.dart';

part 'card.g.dart';

@JsonSerializable()

/// {@template card_template}
/// The card response message.
/// {@endtemplate}
class DialogCard extends Equatable {
  /// The title of the card.
  final String? title;

  /// The subtitle of the card.
  final String? subtitle;

  /// The public URI to an image file for the card.
  final String? imageUri;

  /// The collection of card buttons.
  final List<CardButton>? buttons;

  /// {@macro card_template}
  DialogCard({
    this.title,
    this.subtitle,
    this.imageUri,
    this.buttons,
  });

  ///
  factory DialogCard.fromJson(Map<String, dynamic> json) =>
      _$DialogCardFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$DialogCardToJson(this);

  @override
  List<Object?> get props => [
        title,
        subtitle,
        imageUri,
        buttons,
      ];
}
