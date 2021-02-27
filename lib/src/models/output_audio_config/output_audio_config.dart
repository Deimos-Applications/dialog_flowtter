import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/output_audio_encodig.dart';
import 'synthesize_speech_config.dart';

part 'output_audio_config.g.dart';

@JsonSerializable()

/// {@template output_audio_config_template}
/// Instructs the speech synthesizer on how to generate the output audio
/// content. If this audio config is supplied in a request, it overrides
/// all existing text-to-speech settings applied to the agent.
///
/// See: https://cloud.google.com/dialogflow/docs/reference/rest/v2/OutputAudioConfig
/// {@endtemplate}
class OutputAudioConfig extends Equatable {
  /// Audio encoding of the synthesized audio content.
  ///
  /// For specific values see: https://cloud.google.com/dialogflow/docs/reference/rest/v2/OutputAudioConfig#OutputAudioEncoding
  final OutputAudioEncoding? audioEncoding;

  /// The synthesis sample rate (in hertz) for this audio. If not provided,
  /// then the synthesizer will use the default sample rate based on the
  /// audio encoding. If this is different from the voice's natural sample
  /// rate, then the synthesizer will honor this request by converting to
  /// the desired sample rate (which might result in worse audio quality).
  final int? sampleRateHertz;

  /// Configuration of how speech should be synthesized.
  ///
  /// See: https://cloud.google.com/dialogflow/docs/reference/rest/v2/OutputAudioConfig#SynthesizeSpeechConfig
  final SynthesizeSpeechConfig? synthesizeSpeechConfig;

  /// {@macro output_audio_config_template}
  OutputAudioConfig({
    this.audioEncoding = OutputAudioEncoding.OUTPUT_AUDIO_ENCODING_LINEAR_16,
    this.sampleRateHertz,
    this.synthesizeSpeechConfig,
  });

  ///
  factory OutputAudioConfig.fromJson(Map<String, dynamic> json) =>
      _$OutputAudioConfigFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$OutputAudioConfigToJson(this);

  @override
  List<Object?> get props => [
        audioEncoding,
        sampleRateHertz,
        synthesizeSpeechConfig,
      ];
}
