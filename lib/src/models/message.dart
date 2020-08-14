import 'package:equatable/equatable.dart';
import 'text.dart';

// TODO: Complete model
/// {@template message_template}
/// A rich response message.
/// {@endtemplate}
class Message extends Equatable {
  /// The text response.
  final Text text;

  /// {@macro message_template}
  Message({
    this.text,
  });

  ///
  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      text: json['text'] != null ? Text.fromJson(json['text']) : null,
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
