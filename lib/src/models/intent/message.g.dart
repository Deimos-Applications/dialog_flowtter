// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    text: json['text'] == null
        ? null
        : DialogText.fromJson(json['text'] as Map<String, dynamic>),
    image: json['image'] == null
        ? null
        : DialogImage.fromJson(json['image'] as Map<String, dynamic>),
    quickReplies: json['quickReplies'] == null
        ? null
        : QuickReplies.fromJson(json['quickReplies'] as Map<String, dynamic>),
    card: json['card'] == null
        ? null
        : DialogCard.fromJson(json['card'] as Map<String, dynamic>),
    payload: json['payload'] as Map<String, dynamic>,
    simpleResponses: (json['simpleResponses'] as List)
        ?.map((e) => e == null
            ? null
            : SimpleResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    basicCard: json['basicCard'] == null
        ? null
        : BasicCard.fromJson(json['basicCard'] as Map<String, dynamic>),
    suggestions: (json['suggestions'] as List)
        ?.map((e) =>
            e == null ? null : Suggestion.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    linkOutSuggestion: json['linkOutSuggestion'] == null
        ? null
        : LinkOutSuggestion.fromJson(
            json['linkOutSuggestion'] as Map<String, dynamic>),
    listSelect: json['listSelect'] == null
        ? null
        : ListSelect.fromJson(json['listSelect'] as Map<String, dynamic>),
    carouselSelect: json['carouselSelect'] == null
        ? null
        : CarouselSelect.fromJson(
            json['carouselSelect'] as Map<String, dynamic>),
    browseCarouselCard: json['browseCarouselCard'] as Map<String, dynamic>,
    tableCard: json['tableCard'] as Map<String, dynamic>,
    mediaContent: json['mediaContent'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text?.toJson());
  writeNotNull('image', instance.image?.toJson());
  writeNotNull('quickReplies', instance.quickReplies?.toJson());
  writeNotNull('card', instance.card?.toJson());
  writeNotNull('payload', instance.payload);
  writeNotNull('simpleResponses',
      instance.simpleResponses?.map((e) => e?.toJson())?.toList());
  writeNotNull('basicCard', instance.basicCard?.toJson());
  writeNotNull(
      'suggestions', instance.suggestions?.map((e) => e?.toJson())?.toList());
  writeNotNull('linkOutSuggestion', instance.linkOutSuggestion?.toJson());
  writeNotNull('listSelect', instance.listSelect?.toJson());
  writeNotNull('carouselSelect', instance.carouselSelect?.toJson());
  writeNotNull('browseCarouselCard', instance.browseCarouselCard);
  writeNotNull('tableCard', instance.tableCard);
  writeNotNull('mediaContent', instance.mediaContent);
  return val;
}
