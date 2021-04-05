import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'basic_card_button.dart';
import 'image.dart';

part 'basic_card.g.dart';

@JsonSerializable()

/// {@template basic_card_template}
/// The basic card message. Useful for displaying information.
/// {@endtemplate}
class BasicCard extends Equatable {
  /// The title of the card.
  final String? title;

  /// The subtitle of the card.
  final String? subtitle;

  /// The body text of the card.
  final String? formattedText;

  /// The image for the card.
  final DialogImage? image;

  /// The collection of card buttons.
  final List<BasicCardButton>? buttons;

  /// {@macro basic_card_template}
  BasicCard({
    this.title,
    this.subtitle,
    this.formattedText,
    this.image,
    this.buttons,
  });

  ///
  factory BasicCard.fromJson(Map<String, dynamic> json) =>
      _$BasicCardFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$BasicCardToJson(this);

  @override
  List<Object?> get props => [
        title,
        subtitle,
        formattedText,
        image,
        buttons,
      ];
}
