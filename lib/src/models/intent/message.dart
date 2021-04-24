import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/message_type.dart';
import '../../enums/platform.dart';
import 'message/basic_card.dart';
import 'message/card.dart';
import 'message/carousel_select.dart';
import 'message/image.dart';
import 'message/link_out_suggestion.dart';
import 'message/list_select.dart';
import 'message/quick_replies.dart';
import 'message/simple_response.dart';
import 'message/suggestion.dart';
import 'message/text.dart';

part 'message.g.dart';

@JsonSerializable()

/// {@template message_template}
/// A rich response message.
/// {@endtemplate}
class Message extends Equatable {
  /// The platform that this message is intended for.
  @JsonKey(defaultValue: DialogPlatform.PLATFORM_UNSPECIFIED)
  final DialogPlatform platform;

  /// The text response.
  final DialogText? text;

  /// The image response.
  final DialogImage? image;

  /// The quick replies response.
  final QuickReplies? quickReplies;

  /// The card response.
  final DialogCard? card;

  /// A custom platform-specific response.
  final Map<String, dynamic>? payload;

  /// The voice and text-only responses for Actions on Google.
  final List<SimpleResponse>? simpleResponses;

  /// The basic card response for Actions on Google.
  final BasicCard? basicCard;

  /// The suggestion chips for Actions on Google.
  final List<Suggestion>? suggestions;

  /// The link out suggestion chip for Actions on Google.
  final LinkOutSuggestion? linkOutSuggestion;

  /// The list card response for Actions on Google.
  final ListSelect? listSelect;

  /// The carousel card response for Actions on Google.
  final CarouselSelect? carouselSelect;

  //? Create model if necessary
  /// Browse carousel card for Actions on Google.
  final Map<String, dynamic>? browseCarouselCard;

  //? Create model if necessary
  /// Table card for Actions on Google.
  final Map<String, dynamic>? tableCard;

  //? Create model if necessary
  /// The media content card for Actions on Google.
  final Map<String, dynamic>? mediaContent;

  /// {@macro message_template}
  Message({
    this.platform = DialogPlatform.PLATFORM_UNSPECIFIED,
    this.text,
    this.image,
    this.quickReplies,
    this.card,
    this.payload,
    this.simpleResponses,
    this.basicCard,
    this.suggestions,
    this.linkOutSuggestion,
    this.listSelect,
    this.carouselSelect,
    this.browseCarouselCard,
    this.tableCard,
    this.mediaContent,
  });

  /// The type of the message received
  MessageType get type {
    if (text != null) return MessageType.text;
    if (image != null) return MessageType.image;
    if (quickReplies != null) return MessageType.quickReply;
    if (card != null) return MessageType.card;
    if (payload != null) return MessageType.payload;
    if (simpleResponses != null) return MessageType.simpleResponse;
    if (basicCard != null) return MessageType.basicCard;
    if (suggestions != null) return MessageType.suggestion;
    if (linkOutSuggestion != null) return MessageType.linkOutSuggestion;
    if (listSelect != null) return MessageType.listSelect;
    if (carouselSelect != null) return MessageType.carouselSelect;
    if (browseCarouselCard != null) return MessageType.browseCarouselCard;
    if (tableCard != null) return MessageType.tableCard;
    if (mediaContent != null) return MessageType.mediaContent;
    return MessageType.text;
  }

  ///
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @override
  List<Object?> get props => [
        platform,
        text,
        image,
        quickReplies,
        card,
        payload,
        simpleResponses,
        basicCard,
        suggestions,
        linkOutSuggestion,
        listSelect,
        carouselSelect,
        browseCarouselCard,
        tableCard,
        mediaContent,
      ];
}
