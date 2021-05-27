//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:ibm_apis/language_translator/api_util.dart';
import 'package:ibm_apis/language_translator/model/delete_model_result.dart';
import 'package:ibm_apis/language_translator/model/error_response.dart';
import 'package:ibm_apis/language_translator/model/translation_model.dart';
import 'package:ibm_apis/language_translator/model/translation_models.dart';

class ModelsApi {

  final Dio _dio;

  final Serializers _serializers;

  const ModelsApi(this._dio, this._serializers);

  /// Create model
  /// Uploads training files to customize a translation model. You can customize a model with a forced glossary or with a parallel corpus: * Use a *forced glossary* to force certain terms and phrases to be translated in a specific way. You can upload only a single forced glossary file for a model. The size of a forced glossary file for a custom model is limited to 10 MB. * Use a *parallel corpus* when you want your custom model to learn from general translation patterns in parallel sentences in your samples. What your model learns from a parallel corpus can improve translation results for input text that the model has not been trained on. You can upload multiple parallel corpora files with a request. To successfully train with parallel corpora, the corpora files must contain a cumulative total of at least 5000 parallel sentences. The cumulative size of all uploaded corpus files for a custom model is limited to 250 MB.   Depending on the type of customization and the size of the uploaded files, training time can range from minutes for a glossary to several hours for a large parallel corpus. To create a model that is customized with a parallel corpus and a forced glossary, customize the model with a parallel corpus first and then customize the resulting model with a forced glossary.   You can create a maximum of 10 custom models per language pair. For more information about customizing a translation model, including the formatting and character restrictions for data files, see [Customizing your model](https://cloud.ibm.com/docs/language-translator?topic&#x3D;language-translator-customizing).   #### Supported file formats   You can provide your training data for customization in the following document formats:  * **TMX** (&#x60;.tmx&#x60;) - Translation Memory eXchange (TMX) is an XML specification for the exchange of translation memories.  * **XLIFF** (&#x60;.xliff&#x60;) - XML Localization Interchange File Format (XLIFF) is an XML specification for the exchange of translation memories.  * **CSV** (&#x60;.csv&#x60;) - Comma-separated values (CSV) file with two columns for aligned sentences and phrases. The first row must have two language codes. The first column is for the source language code, and the second column is for the target language code.  * **TSV** (&#x60;.tsv&#x60; or &#x60;.tab&#x60;) - Tab-separated values (TSV) file with two columns for aligned sentences and phrases. The first row must have two language codes. The first column is for the source language code, and the second column is for the target language code.  * **JSON** (&#x60;.json&#x60;) - Custom JSON format for specifying aligned sentences and phrases. * **Microsoft Excel** (&#x60;.xls&#x60; or &#x60;.xlsx&#x60;) - Excel file with the first two columns for aligned sentences and phrases. The first row contains the language code.   You must encode all text data in UTF-8 format. For more information, see [Supported document formats for training data](https://cloud.ibm.com/docs/language-translator?topic&#x3D;language-translator-customizing#supported-document-formats-for-training-data).   #### Specifying file formats   You can indicate the format of a file by including the file extension with the file name. Use the file extensions shown in **Supported file formats**.   Alternatively, you can omit the file extension and specify one of the following &#x60;content-type&#x60; specifications for the file: * **TMX** - &#x60;application/x-tmx+xml&#x60;  * **XLIFF** - &#x60;application/xliff+xml&#x60; * **CSV** - &#x60;text/csv&#x60; * **TSV** - &#x60;text/tab-separated-values&#x60; * **JSON** - &#x60;application/json&#x60; * **Microsoft Excel** - &#x60;application/vnd.openxmlformats-officedocument.spreadsheetml.sheet&#x60;   For example, with &#x60;curl&#x60;, use the following &#x60;content-type&#x60; specification to indicate the format of a CSV file named **glossary**:   &#x60;--form \&quot;forced_glossary&#x3D;@glossary;type&#x3D;text/csv\&quot;&#x60;
  ///
  /// Parameters:
  /// * [version] - Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
  /// * [baseModelId] - The ID of the translation model to use as the base for customization. To see available models and IDs, use the `List models` method. Most models that are provided with the service are customizable. In addition, all models that you create with parallel corpora customization can be further customized with a forced glossary.
  /// * [name] - An optional model name that you can use to identify the model. Valid characters are letters, numbers, dashes, underscores, spaces, and apostrophes. The maximum length of the name is 32 characters.
  /// * [forcedGlossary] - A file with forced glossary terms for the source and target languages. The customizations in the file completely overwrite the domain translation data, including high frequency or high confidence phrase translations.   You can upload only one glossary file for a custom model, and the glossary can have a maximum size of 10 MB. A forced glossary must contain single words or short phrases. For more information, see **Supported file formats** in the method description.   *With `curl`, use `--form forced_glossary=@{filename}`.*
  /// * [parallelCorpus] - A file with parallel sentences for the source and target languages. You can upload multiple parallel corpus files in one request by repeating the parameter. All uploaded parallel corpus files combined must contain at least 5000 parallel sentences to train successfully. You can provide a maximum of 500,000 parallel sentences across all corpora.   A single entry in a corpus file can contain a maximum of 80 words. All corpora files for a custom model can have a cumulative maximum size of 250 MB. For more information, see **Supported file formats** in the method description.   *With `curl`, use `--form parallel_corpus=@{filename}`.*
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TranslationModel] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<TranslationModel>> createModel({ 
    required String version,
    required String baseModelId,
    String? name,
    MultipartFile? forcedGlossary,
    MultipartFile? parallelCorpus,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v3/models';
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
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'version': version,
      r'base_model_id': baseModelId,
      if (name != null) r'name': name,
    };

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        if (forcedGlossary != null) r'forced_glossary': forcedGlossary,
        if (parallelCorpus != null) r'parallel_corpus': parallelCorpus,
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

    TranslationModel _responseData;

    try {
      const _responseType = FullType(TranslationModel);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as TranslationModel;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<TranslationModel>(
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

  /// Delete model
  /// Deletes a custom translation model.
  ///
  /// Parameters:
  /// * [version] - Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
  /// * [modelId] - Model ID of the model to delete.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DeleteModelResult] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<DeleteModelResult>> deleteModel({ 
    required String version,
    required String modelId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v3/models/{model_id}'.replaceAll('{' r'model_id' '}', modelId.toString());
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

    DeleteModelResult _responseData;

    try {
      const _responseType = FullType(DeleteModelResult);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as DeleteModelResult;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<DeleteModelResult>(
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

  /// Get model details
  /// Gets information about a translation model, including training status for custom models. Use this API call to poll the status of your customization request. A successfully completed training has a status of &#x60;available&#x60;.
  ///
  /// Parameters:
  /// * [version] - Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
  /// * [modelId] - Model ID of the model to get
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TranslationModel] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<TranslationModel>> getModel({ 
    required String version,
    required String modelId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v3/models/{model_id}'.replaceAll('{' r'model_id' '}', modelId.toString());
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

    TranslationModel _responseData;

    try {
      const _responseType = FullType(TranslationModel);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as TranslationModel;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<TranslationModel>(
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

  /// List models
  /// Lists available translation models.
  ///
  /// Parameters:
  /// * [version] - Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
  /// * [source_] - Specify a language code to filter results by source language.
  /// * [target] - Specify a language code to filter results by target language.
  /// * [default_] - If the `default` parameter isn't specified, the service returns all models (default and non-default) for each language pair. To return only default models, set this parameter to `true`. To return only non-default models, set this parameter to `false`. There is exactly one default model, the IBM-provided base model, per language pair.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TranslationModels] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<TranslationModels>> listModels({ 
    required String version,
    String? source_,
    String? target,
    bool? default_,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v3/models';
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
      if (source_ != null) r'source': source_,
      if (target != null) r'target': target,
      if (default_ != null) r'default': default_,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TranslationModels _responseData;

    try {
      const _responseType = FullType(TranslationModels);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as TranslationModels;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<TranslationModels>(
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
