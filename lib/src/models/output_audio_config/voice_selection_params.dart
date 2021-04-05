import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/ssml_voice_gender.dart';

part 'voice_selection_params.g.dart';

@JsonSerializable()

///{@template voice_selection_params_template}
/// Description of which voice to use for speech synthesis.
///{@endtemplate}
class VoiceSelectionParams extends Equatable {
  /// The name of the voice.
  ///
  /// If not set, the service will choose a voice based on the other
  /// parameters such as [languageCode] and [ssmlGender].
  final String? name;

  /// The preferred gender of the voice.
  ///
  /// If not set, the service will choose a voice based on the other
  /// parameters such as [languageCode] and [name].
  ///
  /// Note that this is only a preference, not requirement.
  ///
  /// If a voice of the appropriate gender is not available, the synthesizer
  /// should substitute a voice with a different gender rather than failing
  /// the request.
  final SsmlVoiceGender? ssmlGender;

  /// {@macro voice_selection_params_template}
  VoiceSelectionParams({
    this.name,
    this.ssmlGender,
  });

  ///
  factory VoiceSelectionParams.fromJson(Map<String, dynamic> json) =>
      _$VoiceSelectionParamsFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$VoiceSelectionParamsToJson(this);

  @override
  List<Object?> get props => [
        name,
        ssmlGender,
      ];
}
