import 'dart:io';

import '../../dialog_flowtter.dart';

/// The DialogFlowtter http util
class HttpUtil {
  /// Returns the body of the http request filtering the null params
  static Map<String, dynamic> getBody({
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

  /// Returns the formated session URI
  static String getFormatedSession(String projectId, String sessionId) {
    return 'projects/$projectId/agent/sessions/$sessionId';
  }

  /// Verifies if the response is valid and successful
  static bool isValidStatusCode(int code) {
    if (code != HttpStatus.ok &&
        code != HttpStatus.created &&
        code != HttpStatus.accepted &&
        code != HttpStatus.partialContent) {
      return false;
    }
    return true;
  }
}
