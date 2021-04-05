import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_button.g.dart';

@JsonSerializable()

/// {@template card_button_template}
///
/// {@endtemplate}
class CardButton extends Equatable {
  /// The text to show on the button.
  final String? text;

  /// The text to send back to the Dialogflow API or a URI to open.
  final String? postback;

  /// {@macro card_button_template}
  CardButton({
    this.text,
    this.postback,
  });

  ///
  factory CardButton.fromJson(Map<String, dynamic> json) =>
      _$CardButtonFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$CardButtonToJson(this);

  @override
  List<Object?> get props => [
        text,
        postback,
      ];
}
