//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:ibm_apis/language_translator/serializers.dart';
import 'package:ibm_apis/language_translator/auth/api_key_auth.dart';
import 'package:ibm_apis/language_translator/auth/basic_auth.dart';
import 'package:ibm_apis/language_translator/auth/oauth.dart';
import 'package:ibm_apis/language_translator/api/document_translation_api.dart';
import 'package:ibm_apis/language_translator/api/identification_api.dart';
import 'package:ibm_apis/language_translator/api/languages_api.dart';
import 'package:ibm_apis/language_translator/api/models_api.dart';
import 'package:ibm_apis/language_translator/api/translation_api.dart';

class IbmLanguageTranslator {
  static const String basePath = r'https://api.us-south.language-translator.watson.cloud.ibm.com';

  final Dio dio;
  final Serializers serializers;

  IbmLanguageTranslator({
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

  /// Get DocumentTranslationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DocumentTranslationApi getDocumentTranslationApi() {
    return DocumentTranslationApi(dio, serializers);
  }

  /// Get IdentificationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IdentificationApi getIdentificationApi() {
    return IdentificationApi(dio, serializers);
  }

  /// Get LanguagesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LanguagesApi getLanguagesApi() {
    return LanguagesApi(dio, serializers);
  }

  /// Get ModelsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ModelsApi getModelsApi() {
    return ModelsApi(dio, serializers);
  }

  /// Get TranslationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TranslationApi getTranslationApi() {
    return TranslationApi(dio, serializers);
  }
}
