import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'list_select.g.dart';

@JsonSerializable()

/// {@template list_select_template}
/// The card for presenting a list of options to select from.
/// {@endtemplate}
class ListSelect extends Equatable {
  /// The overall title of the list.
  final String? title;

  /// Subtitle of the list.
  final String? subtitle;

  /// List items.
  final List<DialogItem>? items;

  /// {@macro list_select_template}
  ListSelect({
    this.title,
    this.subtitle,
    this.items,
  });

  ///
  factory ListSelect.fromJson(Map<String, dynamic> json) =>
      _$ListSelectFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$ListSelectToJson(this);

  @override
  List<Object?> get props => [
        title,
        subtitle,
        items,
      ];
}
