import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:googleapis_auth/auth.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:meta/meta.dart' show required;

import 'models/detect_intent_response.dart';
import 'models/output_audio_config.dart';
import 'models/query_input.dart';
import 'models/query_parameters.dart';

/// {@template dialog_flowtter_template}
/// ## Detect intent
///
/// One of the core features of DialogFlow is to detect what a person is trying to say. You can do that by detecting an intent that you have defined in your [DialogFlow console](https://dialogflow.cloud.google.com/)
///
/// 1. Create an instance of `DialogFlowtter` and set the `sessionId` that will
/// be used to identify the current conversation of the user with DialogFlow.
///
/// > It's _**highly**_ recommended that you use a different `sessionId` for
/// every conversation that the user establishes with the Assistant
///
/// ```dart
///   final DialogFlowtter dialogFlowtter = DialogFlowtter(
///     sessionId: "YOUR_SESSION_ID_HERE",
///   );
/// ```
///
/// (OPTIONAL) Change the JSON path to the one you're using. This defaults
/// to `assets/dialog_flow_auth.json`.
///
///   ```dart
///     DialogFlowtter(
///       jsonPath: "YOUR_JSON_PATH_HERE",
///     );
///   ```
///
/// 2. Create a `QueryInput` where you can specify what data you want to send
/// to DialogFlow.
///
///   ```dart
///     final QueryInput queryInput = QueryInput(
///       text: TextInput(
///         text: "Hi. How are you?",
///         languageCode: "en",
///       ),
///     );
///   ```
///
/// 3. Send your input to DialogFlow through the `detectIntent` function.
///
///   ```dart
///     DetectIntentResponse response = await dialogFlowtter.detectIntent(
///       queryInput: queryInput,
///     );
///   ```
///
/// > You can check the code for more info on what info you can send and receive
///
/// ## Change the project id
///
/// You can change the Project ID that `DialogFlowtter` will use to find your
/// intents in DialogFlow.
///
/// 1. Create an instance of `DialogFlowtter`
///
///   ```dart
///     final DialogFlowtter dialogFlowtter = DialogFlowtter();
///   ```
///
/// 2. Change the `projectId` prop of the instance;
///
///   ```dart
///     dialogFlowtter.projectId = "deimos-apps-0905";
///   ```
/// {@endtemplate}
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

  /// The associated [projectId]
  ///
  /// If not specified, it would be obtained from the JSON given
  ///
  /// You can override this at any time given and the plugin will use it
  String projectId;

  /// {@macro dialog_flowtter_template}
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
      projectId ??= json['project_id'];
      _client = await getClient(json);
    }

    var body = _getBody(
      queryParams: queryParams,
      queryInput: queryInput,
      audioConfig: audioConfig,
    );

    var response = await _client.post(
      '$kDialogFlowUrl/$kDialogFlowApiVersion/${_getFormatedSession(projectId, sessionId)}:detectIntent',
      body: jsonEncode(body),
    );

    Map<String, dynamic> json = await jsonDecode(response.body);
    return DetectIntentResponse.fromJson(json);
  }

  Map<String, dynamic> _getBody({
    QueryParameters queryParams,
    QueryInput queryInput,
    OutputAudioConfig audioConfig,
  }) {
    Map<String, dynamic> body = {};
    if (queryParams != null) {
      body['queryParams'] = queryParams.toJson();
    }
    if (queryInput != null) {
      body['queryInput'] = queryInput.toJson();
    }
    if (audioConfig != null) {
      body['audioConfig'] = audioConfig.toJson();
    }
    return body;
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
}
