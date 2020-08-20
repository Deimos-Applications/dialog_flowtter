import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
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
  /// The text response.
  final DialogText text;

  /// The image response.
  final DialogImage image;

  /// The quick replies response.
  final QuickReplies quickReplies;

  /// The card response.
  final DialogCard card;

  /// A custom platform-specific response.
  final Map<String, dynamic> payload;

  /// The voice and text-only responses for Actions on Google.
  final List<SimpleResponse> simpleResponses;

  /// The basic card response for Actions on Google.
  final BasicCard basicCard;

  /// The suggestion chips for Actions on Google.
  final List<Suggestion> suggestions;

  /// The link out suggestion chip for Actions on Google.
  final LinkOutSuggestion linkOutSuggestion;

  /// The list card response for Actions on Google.
  final ListSelect listSelect;

  /// The carousel card response for Actions on Google.
  final CarouselSelect carouselSelect;

  //? Create model if necessary
  /// Browse carousel card for Actions on Google.
  final Map<String, dynamic> browseCarouselCard;

  //? Create model if necessary
  /// Table card for Actions on Google.
  final Map<String, dynamic> tableCard;

  //? Create model if necessary
  /// The media content card for Actions on Google.
  final Map<String, dynamic> mediaContent;

  /// {@macro message_template}
  Message({
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

  ///
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @override
  List<Object> get props => [
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
