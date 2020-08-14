import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:googleapis_auth/auth_io.dart';

/// {@template dialog_flowtter_auth_template}
/// The authentication implementation used by [DialogFlowtter]
/// {@endtemplate}
class DialogFlowtterAuth {
  static const String _kDialogFlowScope =
      'https://www.googleapis.com/auth/dialogflow';
  static const String _kDefaultJsonPath = 'assets/dialog_flow_auth.json';

  /// The path of the json file downloaded from the DialogFlow console.
  ///
  /// Remember to add your file to the __pubspec.yaml__ file
  /// ```yaml
  /// assets:
  ///   - assets/dialog_flow_auth.json
  /// ```
  final String jsonPath;

  String _projectId;

  /// {@macro dialog_flowtter_auth_template}
  DialogFlowtterAuth({
    this.jsonPath = _kDefaultJsonPath,
  });

  /// Returns an authenticated HTTP client with the given credentials in the
  /// [json] obtained from [jsonPath]
  Future<AutoRefreshingAuthClient> getClient() async {
    Map<String, dynamic> json = await _getJsonInfo(jsonPath);
    if (json == null) {
      throw Exception(
        '$jsonPath file not found. '
        'Remember to add the file to your pubspec.yaml',
      );
    }
    _projectId = json['project_id'];
    ServiceAccountCredentials credentials =
        ServiceAccountCredentials.fromJson(json);

    AutoRefreshingAuthClient client = await clientViaServiceAccount(
      credentials,
      [_kDialogFlowScope],
    );
    return client;
  }

  /// Returns the json auth info from the specified path
  Future<Map<String, dynamic>> _getJsonInfo(String _jsonPath) async {
    try {
      String data = await rootBundle.loadString(_jsonPath);
      return json.decode(data);
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      return null;
    }
  }

  /// The associated [projectId] obtained from the JSON given
  String get projectId => _projectId;
}
