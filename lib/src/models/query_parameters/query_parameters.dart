import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../context.dart';
import 'lat_lng.dart';
import 'sentiment_analysis_request_config.dart';
import 'session_entity_type.dart';

part 'query_parameters.g.dart';

@JsonSerializable()

/// {@template query_parameters_template}
/// Represents the parameters of the conversational query.
/// {@endtemplate}
class QueryParameters extends Equatable {
  /// The time zone of this conversational query from the
  /// [time zone database](https://www.iana.org/time-zones),
  /// e.g., America/New_York, Europe/Paris. If not provided, the time zone
  /// specified in agent settings is used.
  final String? timeZone;

  /// The geo location of this conversational query.
  final LatLng? geoLocation;

  /// The collection of contexts to be activated before this query is executed.
  final List<Context>? contexts;

  /// Specifies whether to delete all contexts in the current session before
  /// the new ones are activated.
  final bool? resetContexts;

  /// Additional session entity types to replace or extend developer entity
  /// types with.
  ///
  /// The entity synonyms apply to all languages and persist for the session
  /// of this query.
  final List<SessionEntityType>? sessionEntityTypes;

  /// This field can be used to pass custom data to your webhook.
  /// Arbitrary JSON objects are supported.
  ///
  /// If supplied, the value is used to populate the
  /// [WebhookRequest.original_detect_intent_request.payload] field sent to
  /// your webhook.
  final Map<String, dynamic>? payload;

  /// Configures the type of sentiment analysis to perform.
  ///
  /// If not provided, sentiment analysis is not performed.
  final SentimentAnalysisRequestConfig? sentimentAnalysisRequestConfig;

  /// {@macro query_parameters_template}
  QueryParameters({
    this.timeZone,
    this.geoLocation,
    this.contexts,
    this.resetContexts,
    this.sessionEntityTypes,
    this.payload,
    this.sentimentAnalysisRequestConfig,
  });

  ///
  factory QueryParameters.fromJson(Map<String, dynamic> json) =>
      _$QueryParametersFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$QueryParametersToJson(this);

  @override
  List<Object?> get props => [
        timeZone,
        geoLocation,
        contexts,
        resetContexts,
        sessionEntityTypes,
        payload,
        sentimentAnalysisRequestConfig,
      ];
}
