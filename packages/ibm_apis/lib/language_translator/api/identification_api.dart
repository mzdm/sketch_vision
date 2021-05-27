//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:ibm_apis/language_translator/model/error_response.dart';
import 'package:ibm_apis/language_translator/model/identifiable_languages.dart';
import 'package:ibm_apis/language_translator/model/identified_languages.dart';

class IdentificationApi {

  final Dio _dio;

  final Serializers _serializers;

  const IdentificationApi(this._dio, this._serializers);

  /// Identify language
  /// Identifies the language of the input text.
  ///
  /// Parameters:
  /// * [version] - Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
  /// * [text] - Input text in UTF-8 format.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IdentifiedLanguages] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IdentifiedLanguages>> identify({ 
    required String version,
    required String text,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v3/identify';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'IAM',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'text/plain',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'version': version,
    };

    dynamic _bodyData;

    try {
      _bodyData = text;

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IdentifiedLanguages _responseData;

    try {
      const _responseType = FullType(IdentifiedLanguages);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IdentifiedLanguages;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IdentifiedLanguages>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// List identifiable languages
  /// Lists the languages that the service can identify. Returns the language code (for example, &#x60;en&#x60; for English or &#x60;es&#x60; for Spanish) and name of each language.
  ///
  /// Parameters:
  /// * [version] - Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IdentifiableLanguages] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IdentifiableLanguages>> listIdentifiableLanguages({ 
    required String version,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v3/identifiable_languages';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'IAM',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'version': version,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IdentifiableLanguages _responseData;

    try {
      const _responseType = FullType(IdentifiableLanguages);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IdentifiableLanguages;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IdentifiableLanguages>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
