//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//


import 'package:dio/dio.dart';
import 'package:ibm_apis/src/visual_recognition/auth/auth.dart';

class ApiKeyAuthInterceptor extends AuthInterceptor {
  final Map<String, String> apiKeys = {};

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final authInfo = getAuthInfo(options, 'apiKey');
    for (final info in authInfo) {
      final authName = info['name'] as String;
      final authKeyName = info['keyName'] as String;
      final authWhere = info['where'] as String;
      final apiKey = apiKeys[authName];
      if (apiKey != null) {
        if (authWhere == 'query') {
          options.queryParameters[authKeyName] = apiKey;
        } else {
          options.headers[authKeyName] = apiKey;
        }
      }
    }
    super.onRequest(options, handler);
  }
}
