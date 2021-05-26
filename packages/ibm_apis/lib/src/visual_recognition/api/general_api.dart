//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';
import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:ibm_apis/src/visual_recognition/api_util.dart';
import 'package:ibm_apis/src/visual_recognition/model/classified_images.dart';

class GeneralApi {

  final Dio _dio;

  final Serializers _serializers;

  const GeneralApi(this._dio, this._serializers);

  /// Classify images
  ///
  /// Classify images with built-in or custom classifiers.
  Future<Response<ClassifiedImages>> classify({ 
    required String version,
    String? acceptLanguage,
    Uint8List? imagesFile,
    String? url,
    double? threshold,
    BuiltList<String>? owners,
    BuiltList<String>? classifierIds,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v3/classify';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        if (acceptLanguage != null) r'Accept-Language': acceptLanguage,
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
      contentType: [
        'multipart/form-data',
      ].first,
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'version': version,
    };

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        if (imagesFile != null) r'images_file': MultipartFile.fromBytes(imagesFile, filename: r'images_file'),
        if (url != null) r'url': encodeFormParameter(_serializers, url, const FullType(String)),
        if (threshold != null) r'threshold': encodeFormParameter(_serializers, threshold, const FullType(double)),
        if (owners != null) r'owners': encodeFormParameter(_serializers, owners, const FullType(BuiltList, [FullType(String)])),
        if (classifierIds != null) r'classifier_ids': encodeFormParameter(_serializers, classifierIds, const FullType(BuiltList, [FullType(String)])),
      });

    } catch(error) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      );
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

    ClassifiedImages _responseData;

    try {
      const _responseType = FullType(ClassifiedImages);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as ClassifiedImages;

    } catch (error) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      );
    }

    return Response<ClassifiedImages>(
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

  /// Classify an image
  ///
  /// Classify an image with the built-in or custom classifiers.
  Future<Response<ClassifiedImages>> getClassify({ 
    required String version,
    required String url,
    String? acceptLanguage,
    BuiltList<String>? owners,
    BuiltList<String>? classifierIds,
    double? threshold,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v3/classify';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (acceptLanguage != null) r'Accept-Language': acceptLanguage,
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
      contentType: [
        'application/json',
      ].first,
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'version': version,
      r'url': url,
      if (owners != null) r'owners': owners,
      if (classifierIds != null) r'classifier_ids': classifierIds,
      if (threshold != null) r'threshold': threshold,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ClassifiedImages _responseData;

    try {
      const _responseType = FullType(ClassifiedImages);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as ClassifiedImages;

    } catch (error) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      );
    }

    return Response<ClassifiedImages>(
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
