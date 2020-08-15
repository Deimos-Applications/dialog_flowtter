// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output_audio_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OutputAudioConfig _$OutputAudioConfigFromJson(Map<String, dynamic> json) {
  return OutputAudioConfig(
    outputAudioEncodig: json['outputAudioEncodig'] as String,
    sampleRateHertz: json['sampleRateHertz'] as int,
    synthesizeSpeechConfig:
        json['synthesizeSpeechConfig'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$OutputAudioConfigToJson(OutputAudioConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('outputAudioEncodig', instance.outputAudioEncodig);
  writeNotNull('sampleRateHertz', instance.sampleRateHertz);
  writeNotNull('synthesizeSpeechConfig', instance.synthesizeSpeechConfig);
  return val;
}
