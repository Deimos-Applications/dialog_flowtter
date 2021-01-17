// ignore_for_file: constant_identifier_names

/// Audio encoding of the output audio format in Text-To-Speech.
enum OutputAudioEncoding {
  /// Not specified.
  OUTPUT_AUDIO_ENCODING_UNSPECIFIED,

  /// Uncompressed 16-bit signed little-endian samples (Linear PCM).
  ///
  /// Audio content returned as LINEAR16 also contains a WAV header.
  OUTPUT_AUDIO_ENCODING_LINEAR_16,

  /// MP3 audio at 32kbps.
  OUTPUT_AUDIO_ENCODING_MP3,

  /// Opus encoded audio wrapped in an ogg container.
  ///
  /// The result will be a file which can be played natively on Android,
  /// and in browsers (at least Chrome and Firefox).
  /// The quality of the encoding is considerably higher than MP3 while using
  /// approximately the same bitrate.
  OUTPUT_AUDIO_ENCODING_OGG_OPUS,
}
