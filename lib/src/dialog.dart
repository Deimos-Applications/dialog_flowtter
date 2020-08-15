import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:googleapis_auth/auth.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:meta/meta.dart' show required;

import 'models/detect_intent_response.dart';
import 'models/output_audio_config.dart';
import 'models/query_input.dart';
import 'models/query_parameters.dart';

class DialogFlowtter {
  /// The default session ID used to identify the interaction with DialogFlow.
  ///
  /// {@template session_recommend_template}
  /// It is _**highly**_ recommended that you use your custom session id for
  /// every user conversation with DialogFlow
  /// {@endtemplate}
  static const String _kDefaultSessionId = '123';

  /// The Google Auth scope used for DialogFlow
  static const String _kDialogFlowScope =
      'https://www.googleapis.com/auth/dialogflow';

  /// The DialogFlow URL that the package is currently using
  static const String kDialogFlowUrl = "https://dialogflow.googleapis.com";

  /// The DialogFlow API version that the package is currently using
  static const String kDialogFlowApiVersion = "v2";

  /// The default JSON path used to find the auth info
  static const String kDefaultJsonPath = 'assets/dialog_flow_auth.json';

  /// The session id that would be sent to the DialogFlow API
  ///
  /// Defaults to [_kDefaultSessionId].
  ///
  /// {@macro session_recommend_template}
  final String sessionId;

  /// The path of the json file downloaded from the DialogFlow console.
  ///
  /// Remember to add your file to the __pubspec.yaml__ file
  /// ```yaml
  /// assets:
  ///   - assets/dialog_flow_auth.json
  /// ```
  final String jsonPath;

  AutoRefreshingAuthClient _client;
  String _projectId;

  DialogFlowtter({
    this.sessionId = _kDefaultSessionId,
    this.jsonPath = kDefaultJsonPath,
  });

  /// Processes a natural language query and returns structured,
  /// actionable data as a result.
  ///
  /// This method is not idempotent, because it may cause contexts and session
  /// entity types to be updated, which in turn might affect results of future
  /// queries.
  Future<DetectIntentResponse> detectIntent({
    QueryParameters queryParams,
    @required QueryInput queryInput,
    OutputAudioConfig audioConfig,
  }) async {
    if (_client == null) {
      Map<String, dynamic> json = await getJsonInfo(jsonPath);
      if (json == null) {
        throw Exception(
          '$jsonPath file not found. '
          'Remember to add the file to your pubspec.yaml',
        );
      }
      _projectId = json['project_id'];
      _client = await getClient(json);
    }

    var response = await _client.post(
      '$kDialogFlowUrl/$kDialogFlowApiVersion/${_getFormatedSession(_projectId, sessionId)}:detectIntent',
      body: {
        'queryParams': queryParams,
        'queryInput': queryInput,
        'outputAudioConfig': audioConfig,
      },
    );
    print(response.body);
    Map<String, dynamic> json = await jsonDecode(response.body);
    return DetectIntentResponse.fromJson(json);
  }

  String _getFormatedSession(String projectId, String sessionId) {
    return 'projects/$projectId/agent/sessions/$sessionId';
  }

  /// Returns the JSON Auth info from the specified path
  Future<Map<String, dynamic>> getJsonInfo(String _jsonPath) async {
    try {
      String data = await rootBundle.loadString(_jsonPath);
      return json.decode(data);
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      return null;
    }
  }

  /// Returns an authenticated HTTP client with the given credentials in the
  /// [json] obtained from [jsonPath]
  Future<AutoRefreshingAuthClient> getClient(Map<String, dynamic> json) async {
    ServiceAccountCredentials credentials =
        ServiceAccountCredentials.fromJson(json);

    AutoRefreshingAuthClient client = await clientViaServiceAccount(
      credentials,
      [_kDialogFlowScope],
    );
    return client;
  }

  /// The associated [projectId] obtained from the JSON given
  String get projectId => _projectId;
}
