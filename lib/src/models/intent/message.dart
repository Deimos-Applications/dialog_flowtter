import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'message/text.dart';

part 'message.g.dart';

@JsonSerializable()

// TODO: Complete model
/// {@template message_template}
/// A rich response message.
/// {@endtemplate}
class Message extends Equatable {
  /// The text response.
  final DialogText text;

  /// {@macro message_template}
  Message({
    this.text,
  });

  ///
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @override
  List<Object> get props => [
        text,
      ];
}
