import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'entity.g.dart';

@JsonSerializable()

/// {@template entry_template}
/// An entity entry for an associated entity type.
/// {@endtemplate}
class Entity extends Equatable {
  /// The primary value associated with this entity entry.
  ///
  /// For example, if the entity type is vegetable, the value could be
  /// _scallions_.
  ///
  /// For [KIND_MAP] entity types:
  ///
  /// - A reference value to be used in place of synonyms.
  ///
  /// For [KIND_LIST] entity types:
  ///
  /// - A string that can contain references to other entity types
  /// (with or without aliases).
  final String? value;

  /// A collection of value synonyms.
  ///
  /// For example, if the entity type is vegetable, and value is scallions,
  /// a synonym could be green onions.
  ///
  /// For [KIND_LIST] entity types:
  ///
  /// - This collection must contain exactly one synonym equal to value.
  final List<String>? synonyms;

  /// {@macro entry_template}
  Entity({
    this.value,
    this.synonyms,
  });

  ///
  factory Entity.fromJson(Map<String, dynamic> json) => _$EntityFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$EntityToJson(this);

  @override
  List<Object?> get props => [
        value,
        synonyms,
      ];
}
