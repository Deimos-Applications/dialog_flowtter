import 'dart:convert' show jsonDecode, jsonEncode;

import 'package:equatable/equatable.dart' show EquatableConfig;
import 'package:googleapis_auth/googleapis_auth.dart'
    show AutoRefreshingAuthClient;
import 'package:googleapis_auth/auth_io.dart' show clientViaServiceAccount;
import 'package:http/http.dart';

import 'models/auth_credentials.dart';
import 'models/detect_intent_response/detect_intent_response.dart';
import 'models/output_audio_config/output_audio_config.dart';
import 'models/query_input/query_input.dart';
import 'models/query_parameters/query_parameters.dart';
import 'utils/http_util.dart';

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
///     credentials: credentials,
///     sessionId: "YOUR_SESSION_ID_HERE",
///   );
/// ```
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
///     final DialogFlowtter dialogFlowtter = DialogFlowtter(
///       credentials: credentials,
///     );
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

  AutoRefreshingAuthClient? _client;

  /// The associated [projectId]
  ///
  /// If not specified, it would be obtained from the JSON given
  ///
  /// You can override this at any time given and the plugin will use it
  String? projectId;

  /// The auth credentials needed by [DialogFlowtter] to authenticate the API
  /// http calls
  final DialogAuthCredentials credentials;

  /// {@macro dialog_flowtter_template}
  DialogFlowtter({
    this.projectId,
    this.sessionId = _kDefaultSessionId,
    required this.credentials,
  }) {
    EquatableConfig.stringify = true;
  }

  /// Creates a [DialogFlowtter] instance from the JSON given
  ///
  /// {@macro dialog_flowtter_template}
  factory DialogFlowtter.fromJson(
    Map<String, dynamic> json, {
    String? projectId,
    String sessionId = _kDefaultSessionId,
  }) {
    DialogAuthCredentials creds = DialogAuthCredentials.fromJson(json);
    return DialogFlowtter(
      credentials: creds,
      projectId: projectId,
      sessionId: sessionId,
    );
  }

  /// Creates a [DialogFlowtter] instance from the JSON in the given [path]
  ///
  /// Since the file must be read from the disk, this operation is asynchronous
  /// and you need to await for the value to be ready
  ///
  /// {@macro dialog_flowtter_template}
  static Future<DialogFlowtter> fromFile({
    String path = kDefaultJsonPath,
    String? projectId,
    String sessionId = _kDefaultSessionId,
  }) async {
    DialogAuthCredentials creds = await DialogAuthCredentials.fromFile(path);
    return DialogFlowtter(
      credentials: creds,
      projectId: projectId,
      sessionId: sessionId,
    );
  }

  /// Creates a [DialogFlowtter] instance with the JSON obtained from the given
  /// [url]
  ///
  /// {@macro dialog_flowtter_template}
  static Future<DialogFlowtter> fromNetwork(
    String url, {
    String? projectId,
    String sessionId = _kDefaultSessionId,
  }) async {
    DialogAuthCredentials creds = await DialogAuthCredentials.fromNetwork(url);
    return DialogFlowtter(
      credentials: creds,
      projectId: projectId,
      sessionId: sessionId,
    );
  }

  /// Processes a natural language query and returns structured,
  /// actionable data as a result.
  ///
  /// This method is not idempotent, because it may cause contexts and session
  /// entity types to be updated, which in turn might affect results of future
  /// queries.
  Future<DetectIntentResponse> detectIntent({
    QueryParameters? queryParams,
    required QueryInput queryInput,
    OutputAudioConfig? audioConfig,
  }) async {
    if (_client == null) await _updateHttpClient();

    final body = HttpUtil.getBody(
      queryParams: queryParams,
      queryInput: queryInput,
      audioConfig: audioConfig,
    );

    final uri = Uri.parse(
      '$kDialogFlowUrl/$kDialogFlowApiVersion/'
      '${HttpUtil.getFormatedSession(projectId, sessionId)}:detectIntent',
    );

    final Response response = await _client!.post(
      uri,
      body: jsonEncode(body),
    );

    if (!HttpUtil.isValidStatusCode(response.statusCode)) {
      final _json = jsonDecode(response.body)["error"];
      throw Exception(
        "${_json['status']}: ${_json['message']}, (${_json['code']})",
      );
    }

    Map<String, dynamic> json = await jsonDecode(response.body);
    return DetectIntentResponse.fromJson(json);
  }

  /// Returns an authenticated HTTP client
  static Future<AutoRefreshingAuthClient> getClient(
    DialogAuthCredentials credentials,
  ) async {
    AutoRefreshingAuthClient client = await clientViaServiceAccount(
      credentials.serviceAccountCredentials!,
      [_kDialogFlowScope],
    );
    return client;
  }

  /// Disposes the instance of DialogFlowtter and clears the authenticated
  /// client.
  void dispose() {
    _client?.close();
    _client = null;
  }

  /// Retrieves auth credentials from the JSON and creates an HTTP client
  Future<void> _updateHttpClient() async {
    projectId ??= credentials.projectId;
    _client = await getClient(credentials);
  }

  /// The authenticated client used by the package to make http requests
  AutoRefreshingAuthClient? get client => _client;
}
