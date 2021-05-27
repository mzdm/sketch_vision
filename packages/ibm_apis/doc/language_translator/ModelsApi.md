# ibm_language_translator.api.ModelsApi

## Load the API package
```dart
import 'package:ibm_language_translator/api.dart';
```

All URIs are relative to *https://api.us-south.language-translator.watson.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createModel**](ModelsApi.md#createmodel) | **POST** /v3/models | Create model
[**deleteModel**](ModelsApi.md#deletemodel) | **DELETE** /v3/models/{model_id} | Delete model
[**getModel**](ModelsApi.md#getmodel) | **GET** /v3/models/{model_id} | Get model details
[**listModels**](ModelsApi.md#listmodels) | **GET** /v3/models | List models


# **createModel**
> TranslationModel createModel(version, baseModelId, name, forcedGlossary, parallelCorpus)

Create model

Uploads training files to customize a translation model. You can customize a model with a forced glossary or with a parallel corpus: * Use a *forced glossary* to force certain terms and phrases to be translated in a specific way. You can upload only a single forced glossary file for a model. The size of a forced glossary file for a custom model is limited to 10 MB. * Use a *parallel corpus* when you want your custom model to learn from general translation patterns in parallel sentences in your samples. What your model learns from a parallel corpus can improve translation results for input text that the model has not been trained on. You can upload multiple parallel corpora files with a request. To successfully train with parallel corpora, the corpora files must contain a cumulative total of at least 5000 parallel sentences. The cumulative size of all uploaded corpus files for a custom model is limited to 250 MB.   Depending on the type of customization and the size of the uploaded files, training time can range from minutes for a glossary to several hours for a large parallel corpus. To create a model that is customized with a parallel corpus and a forced glossary, customize the model with a parallel corpus first and then customize the resulting model with a forced glossary.   You can create a maximum of 10 custom models per language pair. For more information about customizing a translation model, including the formatting and character restrictions for data files, see [Customizing your model](https://cloud.ibm.com/docs/language-translator?topic=language-translator-customizing).   #### Supported file formats   You can provide your training data for customization in the following document formats:  * **TMX** (`.tmx`) - Translation Memory eXchange (TMX) is an XML specification for the exchange of translation memories.  * **XLIFF** (`.xliff`) - XML Localization Interchange File Format (XLIFF) is an XML specification for the exchange of translation memories.  * **CSV** (`.csv`) - Comma-separated values (CSV) file with two columns for aligned sentences and phrases. The first row must have two language codes. The first column is for the source language code, and the second column is for the target language code.  * **TSV** (`.tsv` or `.tab`) - Tab-separated values (TSV) file with two columns for aligned sentences and phrases. The first row must have two language codes. The first column is for the source language code, and the second column is for the target language code.  * **JSON** (`.json`) - Custom JSON format for specifying aligned sentences and phrases. * **Microsoft Excel** (`.xls` or `.xlsx`) - Excel file with the first two columns for aligned sentences and phrases. The first row contains the language code.   You must encode all text data in UTF-8 format. For more information, see [Supported document formats for training data](https://cloud.ibm.com/docs/language-translator?topic=language-translator-customizing#supported-document-formats-for-training-data).   #### Specifying file formats   You can indicate the format of a file by including the file extension with the file name. Use the file extensions shown in **Supported file formats**.   Alternatively, you can omit the file extension and specify one of the following `content-type` specifications for the file: * **TMX** - `application/x-tmx+xml`  * **XLIFF** - `application/xliff+xml` * **CSV** - `text/csv` * **TSV** - `text/tab-separated-values` * **JSON** - `application/json` * **Microsoft Excel** - `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`   For example, with `curl`, use the following `content-type` specification to indicate the format of a CSV file named **glossary**:   `--form \"forced_glossary=@glossary;type=text/csv\"`

### Example 
```dart
import 'package:ibm_language_translator/api.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmLanguageTranslator().getModelsApi();
final String version = version_example; // String | Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
final String baseModelId = baseModelId_example; // String | The ID of the translation model to use as the base for customization. To see available models and IDs, use the `List models` method. Most models that are provided with the service are customizable. In addition, all models that you create with parallel corpora customization can be further customized with a forced glossary.
final String name = name_example; // String | An optional model name that you can use to identify the model. Valid characters are letters, numbers, dashes, underscores, spaces, and apostrophes. The maximum length of the name is 32 characters.
final MultipartFile forcedGlossary = BINARY_DATA_HERE; // MultipartFile | A file with forced glossary terms for the source and target languages. The customizations in the file completely overwrite the domain translation data, including high frequency or high confidence phrase translations.   You can upload only one glossary file for a custom model, and the glossary can have a maximum size of 10 MB. A forced glossary must contain single words or short phrases. For more information, see **Supported file formats** in the method description.   *With `curl`, use `--form forced_glossary=@{filename}`.*
final MultipartFile parallelCorpus = BINARY_DATA_HERE; // MultipartFile | A file with parallel sentences for the source and target languages. You can upload multiple parallel corpus files in one request by repeating the parameter. All uploaded parallel corpus files combined must contain at least 5000 parallel sentences to train successfully. You can provide a maximum of 500,000 parallel sentences across all corpora.   A single entry in a corpus file can contain a maximum of 80 words. All corpora files for a custom model can have a cumulative maximum size of 250 MB. For more information, see **Supported file formats** in the method description.   *With `curl`, use `--form parallel_corpus=@{filename}`.*

try { 
    final response = api.createModel(version, baseModelId, name, forcedGlossary, parallelCorpus);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ModelsApi->createModel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`. | [default to '2018-05-01']
 **baseModelId** | **String**| The ID of the translation model to use as the base for customization. To see available models and IDs, use the `List models` method. Most models that are provided with the service are customizable. In addition, all models that you create with parallel corpora customization can be further customized with a forced glossary. | 
 **name** | **String**| An optional model name that you can use to identify the model. Valid characters are letters, numbers, dashes, underscores, spaces, and apostrophes. The maximum length of the name is 32 characters. | [optional] 
 **forcedGlossary** | **MultipartFile**| A file with forced glossary terms for the source and target languages. The customizations in the file completely overwrite the domain translation data, including high frequency or high confidence phrase translations.   You can upload only one glossary file for a custom model, and the glossary can have a maximum size of 10 MB. A forced glossary must contain single words or short phrases. For more information, see **Supported file formats** in the method description.   *With `curl`, use `--form forced_glossary=@{filename}`.* | [optional] 
 **parallelCorpus** | **MultipartFile**| A file with parallel sentences for the source and target languages. You can upload multiple parallel corpus files in one request by repeating the parameter. All uploaded parallel corpus files combined must contain at least 5000 parallel sentences to train successfully. You can provide a maximum of 500,000 parallel sentences across all corpora.   A single entry in a corpus file can contain a maximum of 80 words. All corpora files for a custom model can have a cumulative maximum size of 250 MB. For more information, see **Supported file formats** in the method description.   *With `curl`, use `--form parallel_corpus=@{filename}`.* | [optional] 

### Return type

[**TranslationModel**](TranslationModel.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteModel**
> DeleteModelResult deleteModel(version, modelId)

Delete model

Deletes a custom translation model.

### Example 
```dart
import 'package:ibm_language_translator/api.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmLanguageTranslator().getModelsApi();
final String version = version_example; // String | Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
final String modelId = modelId_example; // String | Model ID of the model to delete.

try { 
    final response = api.deleteModel(version, modelId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ModelsApi->deleteModel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`. | [default to '2018-05-01']
 **modelId** | **String**| Model ID of the model to delete. | 

### Return type

[**DeleteModelResult**](DeleteModelResult.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getModel**
> TranslationModel getModel(version, modelId)

Get model details

Gets information about a translation model, including training status for custom models. Use this API call to poll the status of your customization request. A successfully completed training has a status of `available`.

### Example 
```dart
import 'package:ibm_language_translator/api.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmLanguageTranslator().getModelsApi();
final String version = version_example; // String | Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
final String modelId = modelId_example; // String | Model ID of the model to get

try { 
    final response = api.getModel(version, modelId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ModelsApi->getModel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`. | [default to '2018-05-01']
 **modelId** | **String**| Model ID of the model to get | 

### Return type

[**TranslationModel**](TranslationModel.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **listModels**
> TranslationModels listModels(version, source_, target, default_)

List models

Lists available translation models.

### Example 
```dart
import 'package:ibm_language_translator/api.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmLanguageTranslator().getModelsApi();
final String version = version_example; // String | Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
final String source_ = source__example; // String | Specify a language code to filter results by source language.
final String target = target_example; // String | Specify a language code to filter results by target language.
final bool default_ = true; // bool | If the `default` parameter isn't specified, the service returns all models (default and non-default) for each language pair. To return only default models, set this parameter to `true`. To return only non-default models, set this parameter to `false`. There is exactly one default model, the IBM-provided base model, per language pair.

try { 
    final response = api.listModels(version, source_, target, default_);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ModelsApi->listModels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`. | [default to '2018-05-01']
 **source_** | **String**| Specify a language code to filter results by source language. | [optional] 
 **target** | **String**| Specify a language code to filter results by target language. | [optional] 
 **default_** | **bool**| If the `default` parameter isn't specified, the service returns all models (default and non-default) for each language pair. To return only default models, set this parameter to `true`. To return only non-default models, set this parameter to `false`. There is exactly one default model, the IBM-provided base model, per language pair. | [optional] 

### Return type

[**TranslationModels**](TranslationModels.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

