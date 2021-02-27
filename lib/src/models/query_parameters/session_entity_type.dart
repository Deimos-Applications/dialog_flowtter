import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../enums/entity_override_mode.dart';
import 'entity.dart';

part 'session_entity_type.g.dart';

@JsonSerializable()

/// {@template session_entity_type_template}
/// A session represents a conversation between a Dialogflow agent and an
/// end-user.
///
/// You can create special entities, called session entities, during a session.
/// Session entities can extend or replace custom entity types and only exist
/// during the session that they were created for.
///
/// All session data, including session entities, is stored by Dialogflow
/// for 20 minutes.
/// {@endtemplate}
class SessionEntityType extends Equatable {
  /// The unique identifier of this session entity type.
  final String? name;

  /// Indicates whether the additional data should override or supplement the
  /// custom entity type definition.
  final EntityOverrideMode? entityOverrideMode;

  /// The collection of entities associated with this session entity type.
  final List<Entity>? entities;

  /// {@macro session_entity_type_template}
  SessionEntityType({
    this.name,
    this.entityOverrideMode,
    this.entities,
  });

  ///
  factory SessionEntityType.fromJson(Map<String, dynamic> json) =>
      _$SessionEntityTypeFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$SessionEntityTypeToJson(this);

  @override
  List<Object?> get props => [
        name,
        entityOverrideMode,
        entities,
      ];
}
