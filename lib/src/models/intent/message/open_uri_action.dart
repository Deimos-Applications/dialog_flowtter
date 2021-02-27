import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'open_uri_action.g.dart';

@JsonSerializable()

/// {@template open_uri_action_template}
/// Opens the given URI.
/// {@endtemplate}
class OpenUriAction extends Equatable {
  /// The HTTP or HTTPS scheme URI.
  final String? uri;

  /// {@macro open_uri_action_template}
  OpenUriAction({
    this.uri,
  });

  ///
  factory OpenUriAction.fromJson(Map<String, dynamic> json) =>
      _$OpenUriActionFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$OpenUriActionToJson(this);

  @override
  List<Object?> get props => [
        uri,
      ];
}
