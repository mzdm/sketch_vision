# visual_recognition.api.CoreMLApi

## Load the API package
```dart
import 'package:ibm_apis/ibm_apis.dart';
```

All URIs are relative to *https://api.us-south.visual-recognition.watson.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCoreMlModel**](CoreMLApi.md#getcoremlmodel) | **get** /v3/classifiers/{classifier_id}/core_ml_model | Retrieve a Core ML model of a classifier


# **getCoreMlModel**
> Uint8List getCoreMlModel(version, classifierId)

Retrieve a Core ML model of a classifier

Download a Core ML model file (.mlmodel) of a custom classifier that returns <tt>\"core_ml_enabled\": true</tt> in the classifier details.

### Example 
```dart
import 'package:ibm_apis/ibm_apis.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

var api_instance = new CoreMLApi();
var version = version_example; // String | Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`.
var classifierId = classifierId_example; // String | The ID of the classifier.

try { 
    var result = api_instance.getCoreMlModel(version, classifierId);
    print(result);
} catch (e) {
    print('Exception when calling CoreMLApi->getCoreMlModel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`. | 
 **classifierId** | **String**| The ID of the classifier. | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

