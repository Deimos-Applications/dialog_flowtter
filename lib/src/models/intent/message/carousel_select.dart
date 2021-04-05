import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'carousel_select.g.dart';

@JsonSerializable()

/// {@template carousel_select_template}
/// The card for presenting a carousel of options to select from.
/// {@endtemplate}
class CarouselSelect extends Equatable {
  /// Carousel items.
  final List<DialogItem>? items;

  /// {@macro carousel_select_template}
  CarouselSelect({
    this.items,
  });

  ///
  factory CarouselSelect.fromJson(Map<String, dynamic> json) =>
      _$CarouselSelectFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$CarouselSelectToJson(this);

  @override
  List<Object?> get props => [
        items,
      ];
}
