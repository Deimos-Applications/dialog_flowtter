import 'package:equatable/equatable.dart';

/// {@template text_template}
/// The text response message.
/// {@endtemplate}
class Text extends Equatable {
  /// The collection of the agent's responses.
  final List<String> text;

  /// {@macro text_template}
  Text({
    this.text,
  });

  ///
  factory Text.fromJson(Map<String, dynamic> json) {
    return Text(
      text: json['text'].cast<String>(),
    );
  }

  ///
  Map<String, dynamic> toJson() {
    return {
      'text': text,
    };
  }

  @override
  List<Object> get props => [
        text,
      ];
}
