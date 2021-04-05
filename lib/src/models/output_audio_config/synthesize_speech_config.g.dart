// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synthesize_speech_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SynthesizeSpeechConfig _$SynthesizeSpeechConfigFromJson(
    Map<String, dynamic> json) {
  return SynthesizeSpeechConfig(
    speakingRate: (json['speakingRate'] as num?)?.toDouble(),
    pitch: (json['pitch'] as num?)?.toDouble(),
    volumeGainDb: (json['volumeGainDb'] as num?)?.toDouble(),
    effectsProfileId: (json['effectsProfileId'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    voice: json['voice'] == null
        ? null
        : VoiceSelectionParams.fromJson(json['voice'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SynthesizeSpeechConfigToJson(
    SynthesizeSpeechConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('speakingRate', instance.speakingRate);
  writeNotNull('pitch', instance.pitch);
  writeNotNull('volumeGainDb', instance.volumeGainDb);
  writeNotNull('effectsProfileId', instance.effectsProfileId);
  writeNotNull('voice', instance.voice?.toJson());
  return val;
}
