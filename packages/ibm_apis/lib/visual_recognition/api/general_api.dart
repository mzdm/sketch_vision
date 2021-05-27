//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:ibm_apis/visual_recognition/api_util.dart';
import 'package:ibm_apis/visual_recognition/model/classified_images.dart';
import 'package:ibm_apis/visual_recognition/model/error_html.dart';
import 'package:ibm_apis/visual_recognition/model/error_response.dart';

class GeneralApi {

  final Dio _dio;

  final Serializers _serializers;

  const GeneralApi(this._dio, this._serializers);

  /// Classify images
  /// Classify images with built-in or custom classifiers.
  ///
  /// Parameters:
  /// * [version] - Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`.
  /// * [acceptLanguage] - The desired language of parts of the response. See the response for details.
  /// * [imagesFile] - An image file (.gif, .jpg, .png, .tif) or .zip file with images. Maximum image size is 10 MB. Include no more than 20 images and limit the .zip file to 100 MB. Encode the image and .zip file names in UTF-8 if they contain non-ASCII characters. The service assumes UTF-8 encoding if it encounters non-ASCII characters.  You can also include an image with the **url** parameter.
  /// * [url] - The URL of an image (.gif, .jpg, .png, .tif) to analyze. The minimum recommended pixel density is 32X32 pixels, but the service tends to perform better with images that are at least 224 x 224 pixels. The maximum image size is 10 MB.  You can also include images with the **images_file** parameter.
  /// * [threshold] - The minimum score a class must have to be displayed in the response. Set the threshold to `0.0` to return all identified classes.
  /// * [owners] - The categories of classifiers to apply. The **classifier_ids** parameter overrides **owners**, so make sure that **classifier_ids** is empty.  - Use `IBM` to classify against the `default` general classifier. You get the same result if both **classifier_ids** and **owners** parameters are empty. - Use `me` to classify against all your custom classifiers. However, for better performance use **classifier_ids** to specify the specific custom classifiers to apply. - Use both `IBM` and `me` to analyze the image against both classifier categories.
  /// * [classifierIds] - Which classifiers to apply. Overrides the **owners** parameter. You can specify both custom and built-in classifier IDs. The built-in `default` classifier is used if both **classifier_ids** and **owners** parameters are empty.  The following built-in classifier IDs require no training: - `default`: Returns classes from thousands of general tags. - `food`: Enhances specificity and accuracy for images of food items. - `explicit`: Evaluates whether the image might be pornographic.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClassifiedImages] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<ClassifiedImages>> classify({ 
    required String version,
    String? acceptLanguage,
    MultipartFile? imagesFile,
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
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'version': version,
    };

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        if (imagesFile != null) r'images_file': imagesFile,
        if (url != null) r'url': encodeFormParameter(_serializers, url, const FullType(String)),
        if (threshold != null) r'threshold': encodeFormParameter(_serializers, threshold, const FullType(double)),
        if (owners != null) r'owners': encodeFormParameter(_serializers, owners, const FullType(BuiltList, [FullType(String)])),
        if (classifierIds != null) r'classifier_ids': encodeFormParameter(_serializers, classifierIds, const FullType(BuiltList, [FullType(String)])),
      });

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

    ClassifiedImages _responseData;

    try {
      const _responseType = FullType(ClassifiedImages);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as ClassifiedImages;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
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
  /// Classify an image with the built-in or custom classifiers.
  ///
  /// Parameters:
  /// * [version] - Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`.
  /// * [url] - The URL of an image (.gif, .jpg, .png, .tif). The minimum recommended pixel density is 32X32 pixels, but the service tends to perform better with images that are at least 224 x 224 pixels. The maximum image size is 10 MB. Redirects are followed, so you can use a shortened URL.
  /// * [acceptLanguage] - The desired language of parts of the response. See the response for details.
  /// * [owners] - The categories of classifiers to apply. The **classifier_ids** parameter overrides **owners**, so make sure that **classifier_ids** is empty.  - Use `IBM` to classify against the `default` general classifier. You get the same result if both **classifier_ids** and **owners** parameters are empty. - Use `me` to classify against all your custom classifiers. However, for better performance use **classifier_ids** to specify the specific custom classifiers to apply. - Use both `IBM` and `me` to analyze the image against both classifier categories.
  /// * [classifierIds] - Which classifiers to apply. Overrides the **owners** parameter. You can specify both custom and built-in classifier IDs. The built-in `default` classifier is used if both **classifier_ids** and **owners** parameters are empty.  The following built-in classifier_ids require no training: - `default`: Returns classes from thousands of general tags. - `food`: Enhances specificity and accuracy for images of food items. - `explicit`: Evaluates whether the image might be pornographic.
  /// * [threshold] - The minimum score a class must have to be displayed in the response. Set the threshold to `0.0` to return all identified classes
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClassifiedImages] as data
  /// Throws [DioError] if API call or serialization fails
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

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
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
