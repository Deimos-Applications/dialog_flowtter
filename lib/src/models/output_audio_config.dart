import 'package:equatable/equatable.dart';

/// {@template output_audio_config_template}
/// Instructs the speech synthesizer on how to generate the output audio
/// content. If this audio config is supplied in a request, it overrides
/// all existing text-to-speech settings applied to the agent.
///
/// See: https://cloud.google.com/dialogflow/docs/reference/rest/v2/OutputAudioConfig
/// {@endtemplate}
class OutputAudioConfig extends Equatable {
  /// Required. Audio encoding of the synthesized audio content.
  ///
  /// For specific values see: https://cloud.google.com/dialogflow/docs/reference/rest/v2/OutputAudioConfig#OutputAudioEncoding
  final String outputAudioEncodig;

  /// The synthesis sample rate (in hertz) for this audio. If not provided,
  /// then the synthesizer will use the default sample rate based on the
  /// audio encoding. If this is different from the voice's natural sample
  /// rate, then the synthesizer will honor this request by converting to
  /// the desired sample rate (which might result in worse audio quality).
  final int sampleRateHertz;

  // TODO: Create model
  /// Configuration of how speech should be synthesized.
  ///
  /// See: https://cloud.google.com/dialogflow/docs/reference/rest/v2/OutputAudioConfig#SynthesizeSpeechConfig
  final Map<String, dynamic> synthesizeSpeechConfig;

  /// {@macro output_audio_config_template}
  OutputAudioConfig({
    this.outputAudioEncodig,
    this.sampleRateHertz,
    this.synthesizeSpeechConfig,
  });

  ///
  factory OutputAudioConfig.fromJson(Map<String, dynamic> json) {
    return OutputAudioConfig(
      outputAudioEncodig: json['outputAudioEncoding'] as String,
      sampleRateHertz: json['sampleRateHertz'] as int,
      synthesizeSpeechConfig: json['synthesizeSpeechConfig'],
    );
  }

  ///
  Map<String, dynamic> toJson() {
    return {
      'outputAudioEncodig': outputAudioEncodig,
      'sampleRateHertz': sampleRateHertz,
      'synthesizeSpeechConfig': synthesizeSpeechConfig,
    };
  }

  @override
  List<Object> get props => [
        outputAudioEncodig,
        sampleRateHertz,
        synthesizeSpeechConfig,
      ];
}
