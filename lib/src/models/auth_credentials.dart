import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:http/http.dart' as http;

import '../utils/http_util.dart';

/// Auth credentials needed to authenticate API HTTP request to DialogFlow
class DialogAuthCredentials extends Equatable {
  DialogAuthCredentials._({
    this.serviceAccountCredentials,
    this.projectId,
  });

  /// Creates the auth credentials from a given JSON
  factory DialogAuthCredentials.fromJson(Map<String, dynamic> json) {
    final credentials = ServiceAccountCredentials.fromJson(json);
    return DialogAuthCredentials._(
      serviceAccountCredentials: credentials,
      projectId: json[_kProjectIdJsonKey],
    );
  }

  /// Creates the auth credentials from the file in the given [path]
  static Future<DialogAuthCredentials> fromFile(String path) async {
    try {
      String data = await rootBundle.loadString(path);
      Map<String, dynamic> json = jsonDecode(data);
      return DialogAuthCredentials.fromJson(json);
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      throw Exception(
        '$path file not found. '
        'Remember to add the file to your pubspec.yaml',
      );
    }
  }

  /// Creates the auth credentials with the JSON obtained from the given [url]
  static Future<DialogAuthCredentials> fromNetwork(String url) async {
    final uri = Uri.parse(url);

    final response = await http.get(
      uri,
      headers: {
        "Accept": "application/json",
      },
    );
    if (!HttpUtil.isValidStatusCode(response.statusCode)) {
      throw Exception('Could not get response from $url');
    }
    final Map<String, dynamic> json = jsonDecode(response.body);
    return DialogAuthCredentials.fromJson(json);
  }

  static const String _kProjectIdJsonKey = "project_id";

  /// The project id used by DialogFlow
  final String? projectId;

  /// The serviceAccountCredentials needed to make the OAuth2 authentication
  final ServiceAccountCredentials? serviceAccountCredentials;

  @override
  List<Object?> get props => [
        projectId,
        serviceAccountCredentials,
      ];
}
