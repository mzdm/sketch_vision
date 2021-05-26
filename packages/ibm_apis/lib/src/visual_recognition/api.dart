//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:ibm_apis/src/visual_recognition/serializers.dart';
import 'package:ibm_apis/src/visual_recognition/auth/api_key_auth.dart';
import 'package:ibm_apis/src/visual_recognition/auth/basic_auth.dart';
import 'package:ibm_apis/src/visual_recognition/auth/oauth.dart';
import 'package:ibm_apis/src/visual_recognition/api/core_ml_api.dart';
import 'package:ibm_apis/src/visual_recognition/api/custom_api.dart';
import 'package:ibm_apis/src/visual_recognition/api/general_api.dart';
import 'package:ibm_apis/src/visual_recognition/api/user_data_api.dart';

class IbmVisualRecognition {
  static const String basePath = r'https://api.us-south.visual-recognition.watson.cloud.ibm.com';

  final Dio dio;
  final Serializers serializers;

  IbmVisualRecognition({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: 5000,
              receiveTimeout: 3000,
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get CoreMLApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CoreMLApi getCoreMLApi() {
    return CoreMLApi(dio, serializers);
  }

  /// Get CustomApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CustomApi getCustomApi() {
    return CustomApi(dio, serializers);
  }

  /// Get GeneralApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GeneralApi getGeneralApi() {
    return GeneralApi(dio, serializers);
  }

  /// Get UserDataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserDataApi getUserDataApi() {
    return UserDataApi(dio, serializers);
  }
}
