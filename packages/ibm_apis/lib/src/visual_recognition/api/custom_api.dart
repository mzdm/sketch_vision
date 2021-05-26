//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'dart:typed_data';
import 'package:built_value/json_object.dart';
import 'package:ibm_apis/src/visual_recognition/api_util.dart';
import 'package:ibm_apis/src/visual_recognition/model/classifier.dart';
import 'package:ibm_apis/src/visual_recognition/model/classifiers.dart';
import 'package:ibm_apis/src/visual_recognition/model/error_html.dart';
import 'package:ibm_apis/src/visual_recognition/model/error_info.dart';
import 'package:ibm_apis/src/visual_recognition/model/error_response.dart';

class CustomApi {

  final Dio _dio;

  final Serializers _serializers;

  const CustomApi(this._dio, this._serializers);

  /// Create a classifier
  ///
  /// Train a new multi-faceted classifier on the uploaded image data. Create your custom classifier with positive or negative example training images. Include at least two sets of examples, either two positive example files or one positive and one negative file. You can upload a maximum of 256 MB per call.  **Tips when creating:**  - If you set the **X-Watson-Learning-Opt-Out** header parameter to `true` when you create a classifier, the example training images are not stored. Save your training images locally. For more information, see [Data collection](#data-collection).  - Encode all names in UTF-8 if they contain non-ASCII characters (.zip and image file names, and classifier and class names). The service assumes UTF-8 encoding if it encounters non-ASCII characters.
  Future<Response<Classifier>> createClassifier({
    required String version,
    required String name,
    required Uint8List leftCurlyBracketClassnameRightCurlyBracketPositiveExamples,
    Uint8List? negativeExamples,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v3/classifiers';
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
        r'name': encodeFormParameter(_serializers, name, const FullType(String)),
        r'{classname}_positive_examples': MultipartFile.fromBytes(leftCurlyBracketClassnameRightCurlyBracketPositiveExamples, filename: r'{classname}_positive_examples'),
        if (negativeExamples != null) r'negative_examples': MultipartFile.fromBytes(negativeExamples, filename: r'negative_examples'),
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

    Classifier _responseData;

    try {
      const _responseType = FullType(Classifier);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as Classifier;

    } catch (error) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      );
    }

    return Response<Classifier>(
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

  /// Delete a classifier
  ///
  ///
  Future<Response<JsonObject>> deleteClassifier({
    required String version,
    required String classifierId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v3/classifiers/{classifier_id}'.replaceAll('{' r'classifier_id' '}', classifierId.toString());
    final _options = Options(
      method: r'DELETE',
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
      contentType: [
        'application/json',
      ].first,
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

    JsonObject _responseData;

    try {
      const _responseType = FullType(JsonObject);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as JsonObject;

    } catch (error) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      );
    }

    return Response<JsonObject>(
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

  /// Retrieve classifier details
  ///
  /// Retrieve information about a custom classifier.
  Future<Response<Classifier>> getClassifier({
    required String version,
    required String classifierId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v3/classifiers/{classifier_id}'.replaceAll('{' r'classifier_id' '}', classifierId.toString());
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
      contentType: [
        'application/json',
      ].first,
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

    Classifier _responseData;

    try {
      const _responseType = FullType(Classifier);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as Classifier;

    } catch (error) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      );
    }

    return Response<Classifier>(
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

  /// Retrieve a list of classifiers
  ///
  ///
  Future<Response<Classifiers>> listClassifiers({
    required String version,
    bool? verbose,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v3/classifiers';
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
      contentType: [
        'application/json',
      ].first,
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'version': version,
      if (verbose != null) r'verbose': verbose,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Classifiers _responseData;

    try {
      const _responseType = FullType(Classifiers);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as Classifiers;

    } catch (error) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      );
    }

    return Response<Classifiers>(
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

  /// Update a classifier
  ///
  /// Update a custom classifier by adding new positive or negative classes or by adding new images to existing classes. You must supply at least one set of positive or negative examples. For details, see [Updating custom classifiers](https://cloud.ibm.com/docs/visual-recognition?topic=visual-recognition-customizing#updating-custom-classifiers).  Encode all names in UTF-8 if they contain non-ASCII characters (.zip and image file names, and classifier and class names). The service assumes UTF-8 encoding if it encounters non-ASCII characters.  **Tips about retraining:**  - You can't update the classifier if the **X-Watson-Learning-Opt-Out** header parameter was set to `true` when the classifier was created. Training images are not stored in that case. Instead, create another classifier. For more information, see [Data collection](#data-collection).  - Don't make retraining calls on a classifier until the status is ready. When you submit retraining requests in parallel, the last request overwrites the previous requests. The `retrained` property shows the last time the classifier retraining finished.
  Future<Response<Classifier>> updateClassifier({
    required String version,
    required String classifierId,
    Uint8List? leftCurlyBracketClassnameRightCurlyBracketPositiveExamples,
    Uint8List? negativeExamples,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v3/classifiers/{classifier_id}'.replaceAll('{' r'classifier_id' '}', classifierId.toString());
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
        if (leftCurlyBracketClassnameRightCurlyBracketPositiveExamples != null) r'{classname}_positive_examples': MultipartFile.fromBytes(leftCurlyBracketClassnameRightCurlyBracketPositiveExamples, filename: r'{classname}_positive_examples'),
        if (negativeExamples != null) r'negative_examples': MultipartFile.fromBytes(negativeExamples, filename: r'negative_examples'),
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

    Classifier _responseData;

    try {
      const _responseType = FullType(Classifier);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as Classifier;

    } catch (error) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      );
    }

    return Response<Classifier>(
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
