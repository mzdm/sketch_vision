# visual_recognition.model.ClassResult

## Load the model package
```dart
import 'package:ibm_apis/ibm_apis.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**class_** | **String** | Name of the class.   Class names are translated in the language defined by the **Accept-Language** request header for the build-in classifier IDs (`default`, `food`, and `explicit`). Class names of custom classifiers are not translated. The response might not be in the specified language when the requested language is not supported or when there is no translation for the class name. | 
**score** | **double** | Confidence score for the property in the range of 0 to 1. A higher score indicates greater likelihood that the class is depicted in the image. The default threshold for returning scores from a classifier is 0.5. | 
**typeHierarchy** | **String** | Knowledge graph of the property. For example, `/fruit/pome/apple/eating apple/Granny Smith`. Included only if identified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


