import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'select_item_info.g.dart';

@JsonSerializable()

/// {@template select_item_info_template}
/// Additional info about the select item for when it is triggered in a dialog.
/// {@endtemplate}
class SelectItemInfo extends Equatable {
  /// A unique key that will be sent back to the agent if this response is
  /// given.
  final String? key;

  /// A list of synonyms that can also be used to trigger this item in dialog.
  final List<String>? synonyms;

  /// {@macro select_item_info_template}
  SelectItemInfo({
    this.key,
    this.synonyms,
  });

  ///
  factory SelectItemInfo.fromJson(Map<String, dynamic> json) =>
      _$SelectItemInfoFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$SelectItemInfoToJson(this);

  @override
  List<Object?> get props => [
        key,
        synonyms,
      ];
}
