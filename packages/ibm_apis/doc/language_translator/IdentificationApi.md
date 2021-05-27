# ibm_language_translator.api.IdentificationApi

## Load the API package
```dart
import 'package:ibm_language_translator/api.dart';
```

All URIs are relative to *https://api.us-south.language-translator.watson.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**identify**](IdentificationApi.md#identify) | **POST** /v3/identify | Identify language
[**listIdentifiableLanguages**](IdentificationApi.md#listidentifiablelanguages) | **GET** /v3/identifiable_languages | List identifiable languages


# **identify**
> IdentifiedLanguages identify(version, text)

Identify language

Identifies the language of the input text.

### Example 
```dart
import 'package:ibm_language_translator/api.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmLanguageTranslator().getIdentificationApi();
final String version = version_example; // String | Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
final String text = text_example; // String | Input text in UTF-8 format.

try { 
    final response = api.identify(version, text);
    print(response);
} catch on DioError (e) {
    print('Exception when calling IdentificationApi->identify: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`. | [default to '2018-05-01']
 **text** | **String**| Input text in UTF-8 format. | 

### Return type

[**IdentifiedLanguages**](IdentifiedLanguages.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **listIdentifiableLanguages**
> IdentifiableLanguages listIdentifiableLanguages(version)

List identifiable languages

Lists the languages that the service can identify. Returns the language code (for example, `en` for English or `es` for Spanish) and name of each language.

### Example 
```dart
import 'package:ibm_language_translator/api.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmLanguageTranslator().getIdentificationApi();
final String version = version_example; // String | Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.

try { 
    final response = api.listIdentifiableLanguages(version);
    print(response);
} catch on DioError (e) {
    print('Exception when calling IdentificationApi->listIdentifiableLanguages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`. | [default to '2018-05-01']

### Return type

[**IdentifiableLanguages**](IdentifiableLanguages.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

