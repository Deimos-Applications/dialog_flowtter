import 'dart:convert';

import 'package:googleapis_auth/auth.dart';

import 'auth.dart';
import 'models/detect_intent_response.dart';
import 'models/output_audio_config.dart';

class DialogFlowtter {
  static const String _kDefaultSessionId = '123';

  /// The DialogFlow URL that the package is currently using
  static const String kDialogFlowUrl = "https://dialogflow.googleapis.com";

  /// The DialogFlow API version that the package is currently using
  static const String kDialogFlowApiVersion = "v2";

  /// The DialogFlowtter auth implementation to use in the Auth process
  final DialogFlowtterAuth auth;

  /// The session id that would be sent to the DialogFlow API
  final String sessionId;
  AutoRefreshingAuthClient _client;

  DialogFlowtter({
    this.auth,
    this.sessionId = _kDefaultSessionId,
  });

  /// Processes a natural language query and returns structured,
  /// actionable data as a result.
  ///
  /// This method is not idempotent, because it may cause contexts and session
  /// entity types to be updated, which in turn might affect results of future
  /// queries.
  Future<DetectIntentResponse> detectIntent({
    OutputAudioConfig audioConfig,
  }) async {
    if (_client == null) {
      _client = await auth.getClient();
    }

    var response = await _client.post(
      '$kDialogFlowUrl/$kDialogFlowApiVersion/${_getFormatedSession(auth.projectId, sessionId)}:detectIntent',
      body: {
        // TODO: Add query params and input
        'queryParams': '',
        'queryInput': '',
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
}
