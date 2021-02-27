import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'intent_parameter.g.dart';

@JsonSerializable()

/// {@template intent_parameter_template}
/// Represents intent parameters.
/// {@macro intent_parameter_template}
class IntentParameter extends Equatable {
  /// The unique identifier of this parameter.
  final String? name;

  /// The name of the parameter.
  final String? displayName;

  /// The definition of the parameter value. It can be:
  ///
  /// - a constant string.
  /// - a parameter value defined as [$parameter_name].
  /// - an original parameter value defined as [$parameter_name.original].
  /// - a parameter value from some context defined as
  /// [#context_name.parameter_name].
  ///
  /// See: [Parameter](https://cloud.google.com/dialogflow/docs/reference/rest/v2/projects.agent.intents#parameter)
  final String? value;

  /// The default value to use when the value yields an empty result.
  ///
  /// Default values can be extracted from contexts by using the following
  /// syntax: [#context_name.parameter_name].
  final String? defaultValue;

  /// The name of the entity type, prefixed with @, that describes values of
  /// the parameter.
  ///
  /// If the parameter is required, this must be provided.
  final String? entityTypeDisplayName;

  /// Indicates whether the parameter is required.
  ///
  /// That is, whether the intent cannot be completed without collecting the
  /// parameter value.
  final bool? mandatory;

  /// The collection of prompts that the agent can present to the user in
  /// order to collect a value for the parameter.
  final List<String>? prompts;

  /// Indicates whether the parameter represents a list of values.
  final bool? isList;

  /// {@macro intent_parameter_template}
  IntentParameter({
    this.name,
    required this.displayName,
    this.value,
    this.defaultValue,
    this.entityTypeDisplayName,
    this.mandatory,
    this.prompts,
    this.isList,
  });

  ///
  factory IntentParameter.fromJson(Map<String, dynamic> json) =>
      _$IntentParameterFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$IntentParameterToJson(this);

  @override
  List<Object?> get props => [
        name,
        displayName,
        value,
        defaultValue,
        entityTypeDisplayName,
        mandatory,
        prompts,
        isList,
      ];
}
