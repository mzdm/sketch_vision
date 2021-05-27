# visual_recognition.api.CustomApi

## Load the API package
```dart
import 'package:ibm_apis/ibm_apis.dart';
```

All URIs are relative to *https://api.us-south.visual-recognition.watson.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createClassifier**](CustomApi.md#createclassifier) | **post** /v3/classifiers | Create a classifier
[**deleteClassifier**](CustomApi.md#deleteclassifier) | **delete** /v3/classifiers/{classifier_id} | Delete a classifier
[**getClassifier**](CustomApi.md#getclassifier) | **get** /v3/classifiers/{classifier_id} | Retrieve classifier details
[**listClassifiers**](CustomApi.md#listclassifiers) | **get** /v3/classifiers | Retrieve a list of classifiers
[**updateClassifier**](CustomApi.md#updateclassifier) | **post** /v3/classifiers/{classifier_id} | Update a classifier


# **createClassifier**
> Classifier createClassifier(version, name, leftCurlyBracketClassnameRightCurlyBracketPositiveExamples, negativeExamples)

Create a classifier

Train a new multi-faceted classifier on the uploaded image data. Create your custom classifier with positive or negative example training images. Include at least two sets of examples, either two positive example files or one positive and one negative file. You can upload a maximum of 256 MB per call.  **Tips when creating:**  - If you set the **X-Watson-Learning-Opt-Out** header parameter to `true` when you create a classifier, the example training images are not stored. Save your training images locally. For more information, see [Data collection](#data-collection).  - Encode all names in UTF-8 if they contain non-ASCII characters (.zip and image file names, and classifier and class names). The service assumes UTF-8 encoding if it encounters non-ASCII characters.

### Example 
```dart
import 'package:ibm_apis/ibm_apis.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

var api_instance = new CustomApi();
var version = version_example; // String | Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`.
var name = name_example; // String | The name of the new classifier. Encode special characters in UTF-8.
var leftCurlyBracketClassnameRightCurlyBracketPositiveExamples = BINARY_DATA_HERE; // Uint8List | A .zip file of images that depict the visual subject of a class in the new classifier. You can include more than one positive example file in a call.  Specify the parameter name by appending `_positive_examples` to the class name. For example, `goldenretriever_positive_examples` creates the class **goldenretriever**. The string cannot contain the following characters: ``$ * - { } \\\\ | / ' \\\" ` [ ]``.  Include at least 10 images in .jpg or .png format. The minimum recommended image resolution is 32X32 pixels. The maximum number of images is 10,000 images or 100 MB per .zip file.  Encode special characters in the file name in UTF-8.
var negativeExamples = BINARY_DATA_HERE; // Uint8List | A .zip file of images that do not depict the visual subject of any of the classes of the new classifier. Must contain a minimum of 10 images.  Encode special characters in the file name in UTF-8.

try { 
    var result = api_instance.createClassifier(version, name, leftCurlyBracketClassnameRightCurlyBracketPositiveExamples, negativeExamples);
    print(result);
} catch (e) {
    print('Exception when calling CustomApi->createClassifier: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`. | 
 **name** | **String**| The name of the new classifier. Encode special characters in UTF-8. | 
 **leftCurlyBracketClassnameRightCurlyBracketPositiveExamples** | **Uint8List**| A .zip file of images that depict the visual subject of a class in the new classifier. You can include more than one positive example file in a call.  Specify the parameter name by appending `_positive_examples` to the class name. For example, `goldenretriever_positive_examples` creates the class **goldenretriever**. The string cannot contain the following characters: ``$ * - { } \\\\ | / ' \\\" ` [ ]``.  Include at least 10 images in .jpg or .png format. The minimum recommended image resolution is 32X32 pixels. The maximum number of images is 10,000 images or 100 MB per .zip file.  Encode special characters in the file name in UTF-8. | 
 **negativeExamples** | **Uint8List**| A .zip file of images that do not depict the visual subject of any of the classes of the new classifier. Must contain a minimum of 10 images.  Encode special characters in the file name in UTF-8. | [optional] 

### Return type

[**Classifier**](Classifier.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteClassifier**
> JsonObject deleteClassifier(version, classifierId)

Delete a classifier

### Example 
```dart
import 'package:ibm_apis/ibm_apis.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

var api_instance = new CustomApi();
var version = version_example; // String | Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`.
var classifierId = classifierId_example; // String | The ID of the classifier.

try { 
    var result = api_instance.deleteClassifier(version, classifierId);
    print(result);
} catch (e) {
    print('Exception when calling CustomApi->deleteClassifier: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`. | 
 **classifierId** | **String**| The ID of the classifier. | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getClassifier**
> Classifier getClassifier(version, classifierId)

Retrieve classifier details

Retrieve information about a custom classifier.

### Example 
```dart
import 'package:ibm_apis/ibm_apis.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

var api_instance = new CustomApi();
var version = version_example; // String | Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`.
var classifierId = classifierId_example; // String | The ID of the classifier.

try { 
    var result = api_instance.getClassifier(version, classifierId);
    print(result);
} catch (e) {
    print('Exception when calling CustomApi->getClassifier: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`. | 
 **classifierId** | **String**| The ID of the classifier. | 

### Return type

[**Classifier**](Classifier.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **listClassifiers**
> Classifiers listClassifiers(version, verbose)

Retrieve a list of classifiers

### Example 
```dart
import 'package:ibm_apis/ibm_apis.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

var api_instance = new CustomApi();
var version = version_example; // String | Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`.
var verbose = true; // bool | Specify `true` to return details about the classifiers. Omit this parameter to return a brief list of classifiers.

try { 
    var result = api_instance.listClassifiers(version, verbose);
    print(result);
} catch (e) {
    print('Exception when calling CustomApi->listClassifiers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`. | 
 **verbose** | **bool**| Specify `true` to return details about the classifiers. Omit this parameter to return a brief list of classifiers. | [optional] 

### Return type

[**Classifiers**](Classifiers.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateClassifier**
> Classifier updateClassifier(version, classifierId, leftCurlyBracketClassnameRightCurlyBracketPositiveExamples, negativeExamples)

Update a classifier

Update a custom classifier by adding new positive or negative classes or by adding new images to existing classes. You must supply at least one set of positive or negative examples. For details, see [Updating custom classifiers](https://cloud.ibm.com/docs/visual-recognition?topic=visual-recognition-customizing#updating-custom-classifiers).  Encode all names in UTF-8 if they contain non-ASCII characters (.zip and image file names, and classifier and class names). The service assumes UTF-8 encoding if it encounters non-ASCII characters.  **Tips about retraining:**  - You can't update the classifier if the **X-Watson-Learning-Opt-Out** header parameter was set to `true` when the classifier was created. Training images are not stored in that case. Instead, create another classifier. For more information, see [Data collection](#data-collection).  - Don't make retraining calls on a classifier until the status is ready. When you submit retraining requests in parallel, the last request overwrites the previous requests. The `retrained` property shows the last time the classifier retraining finished.

### Example 
```dart
import 'package:ibm_apis/ibm_apis.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

var api_instance = new CustomApi();
var version = version_example; // String | Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`.
var classifierId = classifierId_example; // String | The ID of the classifier.
var leftCurlyBracketClassnameRightCurlyBracketPositiveExamples = BINARY_DATA_HERE; // Uint8List | A .zip file of images that depict the visual subject of a class in the classifier. The positive examples create or update classes in the classifier. You can include more than one positive example file in a call.  Specify the parameter name by appending `_positive_examples` to the class name. For example, `goldenretriever_positive_examples` creates the class `goldenretriever`. The string cannot contain the following characters: ``$ * - { } \\\\ | / ' \\\" ` [ ]``.  Include at least 10 images in .jpg or .png format. The minimum recommended image resolution is 32X32 pixels. The maximum number of images is 10,000 images or 100 MB per .zip file.  Encode special characters in the file name in UTF-8.
var negativeExamples = BINARY_DATA_HERE; // Uint8List | A .zip file of images that do not depict the visual subject of any of the classes of the new classifier. Must contain a minimum of 10 images.  Encode special characters in the file name in UTF-8.

try { 
    var result = api_instance.updateClassifier(version, classifierId, leftCurlyBracketClassnameRightCurlyBracketPositiveExamples, negativeExamples);
    print(result);
} catch (e) {
    print('Exception when calling CustomApi->updateClassifier: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`. | 
 **classifierId** | **String**| The ID of the classifier. | 
 **leftCurlyBracketClassnameRightCurlyBracketPositiveExamples** | **Uint8List**| A .zip file of images that depict the visual subject of a class in the classifier. The positive examples create or update classes in the classifier. You can include more than one positive example file in a call.  Specify the parameter name by appending `_positive_examples` to the class name. For example, `goldenretriever_positive_examples` creates the class `goldenretriever`. The string cannot contain the following characters: ``$ * - { } \\\\ | / ' \\\" ` [ ]``.  Include at least 10 images in .jpg or .png format. The minimum recommended image resolution is 32X32 pixels. The maximum number of images is 10,000 images or 100 MB per .zip file.  Encode special characters in the file name in UTF-8. | [optional] 
 **negativeExamples** | **Uint8List**| A .zip file of images that do not depict the visual subject of any of the classes of the new classifier. Must contain a minimum of 10 images.  Encode special characters in the file name in UTF-8. | [optional] 

### Return type

[**Classifier**](Classifier.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

