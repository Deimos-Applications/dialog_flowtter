import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'text.g.dart';

@JsonSerializable()

/// {@template text_template}
/// The text response message.
/// {@endtemplate}
class DialogText extends Equatable {
  /// The collection of the agent's responses.
  final List<String>? text;

  /// {@macro text_template}
  DialogText({
    this.text,
  });

  ///
  factory DialogText.fromJson(Map<String, dynamic> json) =>
      _$DialogTextFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$DialogTextToJson(this);

  @override
  List<Object?> get props => [
        text,
      ];
}
