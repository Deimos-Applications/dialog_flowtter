import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'image.dart';
import 'select_item_info.dart';

part 'item.g.dart';

@JsonSerializable()

/// {@template item_template}
/// An item in the list.
/// {@endtemplate}
class DialogItem extends Equatable {
  /// Additional information about this option.
  final SelectItemInfo? info;

  /// The title of the item.
  final String? title;

  /// The main text describing the item.
  final String? description;

  /// The image to display.
  final DialogImage? image;

  /// {@macro item_template}
  DialogItem({
    this.info,
    this.title,
    this.description,
    this.image,
  });

  ///
  factory DialogItem.fromJson(Map<String, dynamic> json) =>
      _$DialogItemFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$DialogItemToJson(this);

  @override
  List<Object?> get props => [
        info,
        title,
        description,
        image,
      ];
}
