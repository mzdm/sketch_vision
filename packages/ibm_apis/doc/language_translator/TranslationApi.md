# ibm_language_translator.api.TranslationApi

## Load the API package
```dart
import 'package:ibm_apis/language_translator.dart';
```

All URIs are relative to *https://api.us-south.language-translator.watson.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**translate**](TranslationApi.md#translate) | **POST** /v3/translate | Translate


# **translate**
> TranslationResult translate(version, request)

Translate

Translates the input text from the source language to the target language. Specify a model ID that indicates the source and target languages, or specify the source and target languages individually. You can omit the source language to have the service attempt to detect the language from the input text. If you omit the source language, the request must contain sufficient input text for the service to identify the source language.   You can translate a maximum of 50 KB (51,200 bytes) of text with a single request. All input text must be encoded in UTF-8 format.

### Example 
```dart
import 'package:ibm_apis/language_translator.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmLanguageTranslator().getTranslationApi();
final String version = version_example; // String | Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
final TranslateRequest request = ; // TranslateRequest | The translate request containing the text, and either a model ID or source and target language pair.

try { 
    final response = api.translate(version, request);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TranslationApi->translate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`. | [default to '2018-05-01']
 **request** | [**TranslateRequest**](TranslateRequest.md)| The translate request containing the text, and either a model ID or source and target language pair. | 

### Return type

[**TranslationResult**](TranslationResult.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

