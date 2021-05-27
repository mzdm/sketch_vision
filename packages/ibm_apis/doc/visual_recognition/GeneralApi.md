# ibm_visual_recognition.api.GeneralApi

## Load the API package
```dart
import 'package:ibm_apis/visual_recognition.dart';
```

All URIs are relative to *https://api.us-south.visual-recognition.watson.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**classify**](GeneralApi.md#classify) | **POST** /v3/classify | Classify images
[**getClassify**](GeneralApi.md#getclassify) | **GET** /v3/classify | Classify an image


# **classify**
> ClassifiedImages classify(version, acceptLanguage, imagesFile, url, threshold, owners, classifierIds)

Classify images

Classify images with built-in or custom classifiers.

### Example 
```dart
import 'package:ibm_apis/visual_recognition.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmVisualRecognition().getGeneralApi();
final String version = version_example; // String | Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`.
final String acceptLanguage = acceptLanguage_example; // String | The desired language of parts of the response. See the response for details.
final MultipartFile imagesFile = BINARY_DATA_HERE; // MultipartFile | An image file (.gif, .jpg, .png, .tif) or .zip file with images. Maximum image size is 10 MB. Include no more than 20 images and limit the .zip file to 100 MB. Encode the image and .zip file names in UTF-8 if they contain non-ASCII characters. The service assumes UTF-8 encoding if it encounters non-ASCII characters.  You can also include an image with the **url** parameter.
final String url = url_example; // String | The URL of an image (.gif, .jpg, .png, .tif) to analyze. The minimum recommended pixel density is 32X32 pixels, but the service tends to perform better with images that are at least 224 x 224 pixels. The maximum image size is 10 MB.  You can also include images with the **images_file** parameter.
final double threshold = 3.4; // double | The minimum score a class must have to be displayed in the response. Set the threshold to `0.0` to return all identified classes.
final BuiltList<String> owners = owners_example; // BuiltList<String> | The categories of classifiers to apply. The **classifier_ids** parameter overrides **owners**, so make sure that **classifier_ids** is empty.  - Use `IBM` to classify against the `default` general classifier. You get the same result if both **classifier_ids** and **owners** parameters are empty. - Use `me` to classify against all your custom classifiers. However, for better performance use **classifier_ids** to specify the specific custom classifiers to apply. - Use both `IBM` and `me` to analyze the image against both classifier categories.
final BuiltList<String> classifierIds = classifierIds_example; // BuiltList<String> | Which classifiers to apply. Overrides the **owners** parameter. You can specify both custom and built-in classifier IDs. The built-in `default` classifier is used if both **classifier_ids** and **owners** parameters are empty.  The following built-in classifier IDs require no training: - `default`: Returns classes from thousands of general tags. - `food`: Enhances specificity and accuracy for images of food items. - `explicit`: Evaluates whether the image might be pornographic.

try { 
    final response = api.classify(version, acceptLanguage, imagesFile, url, threshold, owners, classifierIds);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GeneralApi->classify: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`. | 
 **acceptLanguage** | **String**| The desired language of parts of the response. See the response for details. | [optional] [default to 'en']
 **imagesFile** | **MultipartFile**| An image file (.gif, .jpg, .png, .tif) or .zip file with images. Maximum image size is 10 MB. Include no more than 20 images and limit the .zip file to 100 MB. Encode the image and .zip file names in UTF-8 if they contain non-ASCII characters. The service assumes UTF-8 encoding if it encounters non-ASCII characters.  You can also include an image with the **url** parameter. | [optional] 
 **url** | **String**| The URL of an image (.gif, .jpg, .png, .tif) to analyze. The minimum recommended pixel density is 32X32 pixels, but the service tends to perform better with images that are at least 224 x 224 pixels. The maximum image size is 10 MB.  You can also include images with the **images_file** parameter. | [optional] 
 **threshold** | **double**| The minimum score a class must have to be displayed in the response. Set the threshold to `0.0` to return all identified classes. | [optional] [default to 0.5]
 **owners** | [**BuiltList&lt;String&gt;**](String.md)| The categories of classifiers to apply. The **classifier_ids** parameter overrides **owners**, so make sure that **classifier_ids** is empty.  - Use `IBM` to classify against the `default` general classifier. You get the same result if both **classifier_ids** and **owners** parameters are empty. - Use `me` to classify against all your custom classifiers. However, for better performance use **classifier_ids** to specify the specific custom classifiers to apply. - Use both `IBM` and `me` to analyze the image against both classifier categories. | [optional] 
 **classifierIds** | [**BuiltList&lt;String&gt;**](String.md)| Which classifiers to apply. Overrides the **owners** parameter. You can specify both custom and built-in classifier IDs. The built-in `default` classifier is used if both **classifier_ids** and **owners** parameters are empty.  The following built-in classifier IDs require no training: - `default`: Returns classes from thousands of general tags. - `food`: Enhances specificity and accuracy for images of food items. - `explicit`: Evaluates whether the image might be pornographic. | [optional] 

### Return type

[**ClassifiedImages**](ClassifiedImages.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getClassify**
> ClassifiedImages getClassify(version, url, acceptLanguage, owners, classifierIds, threshold)

Classify an image

Classify an image with the built-in or custom classifiers.

### Example 
```dart
import 'package:ibm_apis/visual_recognition.dart';
// TODO Configure API key authorization: IAM
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('IAM').apiKeyPrefix = 'Bearer';

final api = IbmVisualRecognition().getGeneralApi();
final String version = version_example; // String | Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`.
final String url = url_example; // String | The URL of an image (.gif, .jpg, .png, .tif). The minimum recommended pixel density is 32X32 pixels, but the service tends to perform better with images that are at least 224 x 224 pixels. The maximum image size is 10 MB. Redirects are followed, so you can use a shortened URL.
final String acceptLanguage = acceptLanguage_example; // String | The desired language of parts of the response. See the response for details.
final BuiltList<String> owners = ; // BuiltList<String> | The categories of classifiers to apply. The **classifier_ids** parameter overrides **owners**, so make sure that **classifier_ids** is empty.  - Use `IBM` to classify against the `default` general classifier. You get the same result if both **classifier_ids** and **owners** parameters are empty. - Use `me` to classify against all your custom classifiers. However, for better performance use **classifier_ids** to specify the specific custom classifiers to apply. - Use both `IBM` and `me` to analyze the image against both classifier categories.
final BuiltList<String> classifierIds = ; // BuiltList<String> | Which classifiers to apply. Overrides the **owners** parameter. You can specify both custom and built-in classifier IDs. The built-in `default` classifier is used if both **classifier_ids** and **owners** parameters are empty.  The following built-in classifier_ids require no training: - `default`: Returns classes from thousands of general tags. - `food`: Enhances specificity and accuracy for images of food items. - `explicit`: Evaluates whether the image might be pornographic.
final double threshold = 3.4; // double | The minimum score a class must have to be displayed in the response. Set the threshold to `0.0` to return all identified classes

try { 
    final response = api.getClassify(version, url, acceptLanguage, owners, classifierIds, threshold);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GeneralApi->getClassify: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Release date of the API version you want to use. Specify dates in YYYY-MM-DD format. The current version is `2018-03-19`. | 
 **url** | **String**| The URL of an image (.gif, .jpg, .png, .tif). The minimum recommended pixel density is 32X32 pixels, but the service tends to perform better with images that are at least 224 x 224 pixels. The maximum image size is 10 MB. Redirects are followed, so you can use a shortened URL. | 
 **acceptLanguage** | **String**| The desired language of parts of the response. See the response for details. | [optional] [default to 'en']
 **owners** | [**BuiltList&lt;String&gt;**](String.md)| The categories of classifiers to apply. The **classifier_ids** parameter overrides **owners**, so make sure that **classifier_ids** is empty.  - Use `IBM` to classify against the `default` general classifier. You get the same result if both **classifier_ids** and **owners** parameters are empty. - Use `me` to classify against all your custom classifiers. However, for better performance use **classifier_ids** to specify the specific custom classifiers to apply. - Use both `IBM` and `me` to analyze the image against both classifier categories. | [optional] 
 **classifierIds** | [**BuiltList&lt;String&gt;**](String.md)| Which classifiers to apply. Overrides the **owners** parameter. You can specify both custom and built-in classifier IDs. The built-in `default` classifier is used if both **classifier_ids** and **owners** parameters are empty.  The following built-in classifier_ids require no training: - `default`: Returns classes from thousands of general tags. - `food`: Enhances specificity and accuracy for images of food items. - `explicit`: Evaluates whether the image might be pornographic. | [optional] 
 **threshold** | **double**| The minimum score a class must have to be displayed in the response. Set the threshold to `0.0` to return all identified classes | [optional] [default to 0.5]

### Return type

[**ClassifiedImages**](ClassifiedImages.md)

### Authorization

[IAM](../../README.md#IAM)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

