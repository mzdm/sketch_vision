# ibm_language_translator.api.LanguagesApi

## Load the API package
```dart
import 'package:ibm_language_translator/api.dart';
```

All URIs are relative to *https://api.us-south.language-translator.watson.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listLanguages**](LanguagesApi.md#listlanguages) | **GET** /v3/languages | List supported languages


# **listLanguages**
> Languages listLanguages(version)

List supported languages

Lists all supported languages for translation. The method returns an array of supported languages with information about each language. Languages are listed in alphabetical order by language code (for example, `af`, `ar`). In addition to basic information about each language, the response indicates whether the language is `supported_as_source` for translation and `supported_as_target` for translation. It also lists whether the language is `identifiable`.

### Example 
```dart
import 'package:ibm_language_translator/api.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmLanguageTranslator().getLanguagesApi();
final String version = version_example; // String | Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.

try { 
    final response = api.listLanguages(version);
    print(response);
} catch on DioError (e) {
    print('Exception when calling LanguagesApi->listLanguages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`. | [default to '2018-05-01']

### Return type

[**Languages**](Languages.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

