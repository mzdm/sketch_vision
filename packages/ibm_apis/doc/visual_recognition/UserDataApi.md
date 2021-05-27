# ibm_visual_recognition.api.UserDataApi

## Load the API package
```dart
import 'package:ibm_apis/visual_recognition.dart';
```

All URIs are relative to *https://api.us-south.visual-recognition.watson.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUserData**](UserDataApi.md#deleteuserdata) | **DELETE** /v3/user_data | Delete labeled data


# **deleteUserData**
> JsonObject deleteUserData(version, customerId)

Delete labeled data

Deletes all data associated with a specified customer ID. The method has no effect if no data is associated with the customer ID.   You associate a customer ID with data by passing the `X-Watson-Metadata` header with a request that passes data. For more information about personal data and customer IDs, see [Information security](https://cloud.ibm.com/docs/visual-recognition?topic=visual-recognition-information-security).

### Example 
```dart
import 'package:ibm_apis/visual_recognition.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmVisualRecognition().getUserDataApi();
final String version = version_example; // String | Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`.
final String customerId = customerId_example; // String | The customer ID for which all data is to be deleted.

try { 
    final response = api.deleteUserData(version, customerId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserDataApi->deleteUserData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`. | 
 **customerId** | **String**| The customer ID for which all data is to be deleted. | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

