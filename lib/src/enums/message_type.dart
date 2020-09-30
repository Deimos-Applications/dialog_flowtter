/// The type of the message received
enum MessageType {
  /// Text response.
  text,

  /// Image response.
  image,

  /// Quick replies response.
  quickReply,

  /// Card response.
  card,

  /// A custom platform-specific response.
  payload,

  /// Voice and text-only responses for Actions on Google.
  simpleResponse,

  /// Basic card response for Actions on Google.
  basicCard,

  /// Suggestion chips for Actions on Google.
  suggestion,

  /// Link out suggestion chip for Actions on Google.
  linkOutSuggestion,

  /// List card response for Actions on Google.
  listSelect,

  /// Carousel card response for Actions on Google.
  carouselSelect,

  /// Browse carousel card for Actions on Google.
  browseCarouselCard,

  /// Table card for Actions on Google.
  tableCard,

  /// Media content card for Actions on Google.
  mediaContent,
}
