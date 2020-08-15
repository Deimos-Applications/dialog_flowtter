// ignore_for_file: constant_identifier_names

/// The types of modifications for a session entity type.
enum EntityOverrideMode {
  /// Not specified. This value should be never used.
  ENTITY_OVERRIDE_MODE_UNSPECIFIED,

  /// The collection of session entities overrides the collection of entities
  /// in the corresponding custom entity type.
  ENTITY_OVERRIDE_MODE_OVERRIDE,

  /// The collection of session entities extends the collection of entities
  /// in the corresponding custom entity type.
  ENTITY_OVERRIDE_MODE_SUPPLEMENT,
}
