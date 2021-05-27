# visual_recognition.model.ClassifiedImage

## Load the model package
```dart
import 'package:ibm_apis/ibm_apis.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sourceUrl** | **String** | Source of the image before any redirects. Not returned when the image is uploaded. | [optional] 
**resolvedUrl** | **String** | Fully resolved URL of the image after redirects are followed. Not returned when the image is uploaded. | [optional] 
**image** | **String** | Relative path of the image file if uploaded directly. Not returned when the image is passed by URL. | [optional] 
**error** | [**ErrorInfo**](ErrorInfo.md) |  | [optional] 
**classifiers** | [**BuiltList<ClassifierResult>**](ClassifierResult.md) | The classifiers | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)


