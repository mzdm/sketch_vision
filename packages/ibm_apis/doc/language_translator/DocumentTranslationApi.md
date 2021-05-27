# ibm_language_translator.api.DocumentTranslationApi

## Load the API package
```dart
import 'package:ibm_language_translator/api.dart';
```

All URIs are relative to *https://api.us-south.language-translator.watson.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDocument**](DocumentTranslationApi.md#deletedocument) | **DELETE** /v3/documents/{document_id} | Delete document
[**getDocumentStatus**](DocumentTranslationApi.md#getdocumentstatus) | **GET** /v3/documents/{document_id} | Get document status
[**getTranslatedDocument**](DocumentTranslationApi.md#gettranslateddocument) | **GET** /v3/documents/{document_id}/translated_document | Get translated document
[**listDocuments**](DocumentTranslationApi.md#listdocuments) | **GET** /v3/documents | List documents
[**translateDocument**](DocumentTranslationApi.md#translatedocument) | **POST** /v3/documents | Translate document


# **deleteDocument**
> deleteDocument(version, documentId)

Delete document

Deletes a document

### Example 
```dart
import 'package:ibm_language_translator/api.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmLanguageTranslator().getDocumentTranslationApi();
final String version = version_example; // String | Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
final String documentId = documentId_example; // String | Document ID of the document to delete

try { 
    api.deleteDocument(version, documentId);
} catch on DioError (e) {
    print('Exception when calling DocumentTranslationApi->deleteDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`. | [default to '2018-05-01']
 **documentId** | **String**| Document ID of the document to delete | 

### Return type

void (empty response body)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getDocumentStatus**
> DocumentStatus getDocumentStatus(version, documentId)

Get document status

Gets the translation status of a document

### Example 
```dart
import 'package:ibm_language_translator/api.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmLanguageTranslator().getDocumentTranslationApi();
final String version = version_example; // String | Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
final String documentId = documentId_example; // String | The document ID of the document

try { 
    final response = api.getDocumentStatus(version, documentId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DocumentTranslationApi->getDocumentStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`. | [default to '2018-05-01']
 **documentId** | **String**| The document ID of the document | 

### Return type

[**DocumentStatus**](DocumentStatus.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getTranslatedDocument**
> Uint8List getTranslatedDocument(version, documentId)

Get translated document

Gets the translated document associated with the given document ID

### Example 
```dart
import 'package:ibm_language_translator/api.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmLanguageTranslator().getDocumentTranslationApi();
final String version = version_example; // String | Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
final String documentId = documentId_example; // String | The document ID of the document that was submitted for translation

try { 
    final response = api.getTranslatedDocument(version, documentId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DocumentTranslationApi->getTranslatedDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`. | [default to '2018-05-01']
 **documentId** | **String**| The document ID of the document that was submitted for translation | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/powerpoint, application/mspowerpoint, application/x-rtf, application/json, application/xml, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-powerpoint, application/vnd.openxmlformats-officedocument.presentationml.presentation, application/msword, application/vnd.openxmlformats-officedocument.wordprocessingml.document, application/vnd.oasis.opendocument.spreadsheet, application/vnd.oasis.opendocument.presentation, application/vnd.oasis.opendocument.text, application/pdf, application/rtf, text/html, text/json, text/plain, text/richtext, text/rtf, text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **listDocuments**
> DocumentList listDocuments(version)

List documents

Lists documents that have been submitted for translation

### Example 
```dart
import 'package:ibm_language_translator/api.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmLanguageTranslator().getDocumentTranslationApi();
final String version = version_example; // String | Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.

try { 
    final response = api.listDocuments(version);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DocumentTranslationApi->listDocuments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`. | [default to '2018-05-01']

### Return type

[**DocumentList**](DocumentList.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **translateDocument**
> DocumentStatus translateDocument(version, file, modelId, source_, target, documentId)

Translate document

Submit a document for translation. You can submit the document contents in the `file` parameter, or you can reference a previously submitted document by document ID. The maximum file size for document translation is * 20 MB for service instances on the Standard, Advanced, and Premium plans * 2 MB for service instances on the Lite plan

### Example 
```dart
import 'package:ibm_language_translator/api.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmLanguageTranslator().getDocumentTranslationApi();
final String version = version_example; // String | Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`.
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | The contents of the source file to translate. The maximum file size for document translation is 20 MB for service instances on the Standard, Advanced, and Premium plans, and 2 MB for service instances on the Lite plan. For more information, see [Supported file formats (Beta)](https://cloud.ibm.com/docs/language-translator?topic=language-translator-document-translator-tutorial#supported-file-formats).
final String modelId = modelId_example; // String | The model to use for translation. For example, `en-de` selects the IBM-provided base model for English-to-German translation. A model ID overrides the `source` and `target` parameters and is required if you use a custom model. If no model ID is specified, you must specify at least a target language.
final String source_ = source__example; // String | Language code that specifies the language of the source document. If omitted, the service derives the source language from the input text. The input must contain sufficient text for the service to identify the language reliably.
final String target = target_example; // String | Language code that specifies the target language for translation. Required if model ID is not specified.
final String documentId = documentId_example; // String | To use a previously submitted document as the source for a new translation, enter the `document_id` of the document.

try { 
    final response = api.translateDocument(version, file, modelId, source_, target, documentId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DocumentTranslationApi->translateDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the version of the API you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-05-01`. | [default to '2018-05-01']
 **file** | **MultipartFile**| The contents of the source file to translate. The maximum file size for document translation is 20 MB for service instances on the Standard, Advanced, and Premium plans, and 2 MB for service instances on the Lite plan. For more information, see [Supported file formats (Beta)](https://cloud.ibm.com/docs/language-translator?topic=language-translator-document-translator-tutorial#supported-file-formats). | 
 **modelId** | **String**| The model to use for translation. For example, `en-de` selects the IBM-provided base model for English-to-German translation. A model ID overrides the `source` and `target` parameters and is required if you use a custom model. If no model ID is specified, you must specify at least a target language. | [optional] 
 **source_** | **String**| Language code that specifies the language of the source document. If omitted, the service derives the source language from the input text. The input must contain sufficient text for the service to identify the language reliably. | [optional] 
 **target** | **String**| Language code that specifies the target language for translation. Required if model ID is not specified. | [optional] 
 **documentId** | **String**| To use a previously submitted document as the source for a new translation, enter the `document_id` of the document. | [optional] 

### Return type

[**DocumentStatus**](DocumentStatus.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

