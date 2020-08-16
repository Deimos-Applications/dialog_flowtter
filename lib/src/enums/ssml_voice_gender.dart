// ignore_for_file: constant_identifier_names
/// Gender of the voice as described in
/// [SSML voice element](https://www.w3.org/TR/speech-synthesis11/#edef_voice).
enum SsmlVoiceGender {
  /// An unspecified gender, which means that the client doesn't care which
  /// gender the selected voice will have.
  SSML_VOICE_GENDER_UNSPECIFIED,

  /// A male voice.
  SSML_VOICE_GENDER_MALE,

  /// A female voice.
  SSML_VOICE_GENDER_FEMALE,

  /// A gender-neutral voice.
  SSML_VOICE_GENDER_NEUTRAL,
}
