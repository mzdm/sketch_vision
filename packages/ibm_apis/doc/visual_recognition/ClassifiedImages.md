# ibm_visual_recognition.model.ClassifiedImages

## Load the model package
```dart
import 'package:ibm_apis/ibm_apis.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customClasses** | **int** | Number of custom classes identified in the images. | [optional] 
**imagesProcessed** | **int** | Number of images processed for the API call. | [optional] 
**images** | [**BuiltList&lt;ClassifiedImage&gt;**](ClassifiedImage.md) | Classified images. | 
**warnings** | [**BuiltList&lt;WarningInfo&gt;**](WarningInfo.md) | Information about what might cause less than optimal output. For example, a request sent with a corrupt .zip file and a list of image URLs will still complete, but does not return the expected output. Not returned when there is no warning. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)


