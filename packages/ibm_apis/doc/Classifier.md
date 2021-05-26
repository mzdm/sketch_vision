# visual_recognition.model.Classifier

## Load the model package
```dart
import 'package:ibm_apis/ibm_apis.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**classifierId** | **String** | ID of a classifier identified in the image. | 
**name** | **String** | Name of the classifier. | 
**owner** | **String** | Unique ID of the account who owns the classifier. Might not be returned by some requests. | [optional] 
**status** | **String** | Training status of classifier. | [optional] 
**coreMlEnabled** | **bool** | Whether the classifier can be downloaded as a Core ML model after the training status is `ready`. | [optional] 
**explanation** | **String** | If classifier training has failed, this field might explain why. | [optional] 
**created** | [**DateTime**](DateTime.md) | Date and time in Coordinated Universal Time (UTC) that the classifier was created. | [optional] 
**classes** | [**BuiltList<ModelClass>**](ModelClass.md) | Classes that define a classifier. | [optional] 
**retrained** | [**DateTime**](DateTime.md) | Date and time in Coordinated Universal Time (UTC) that the classifier was updated. Might not be returned by some requests. Identical to `updated` and retained for backward compatibility. | [optional] 
**updated** | [**DateTime**](DateTime.md) | Date and time in Coordinated Universal Time (UTC) that the classifier was most recently updated. The field matches either `retrained` or `created`. Might not be returned by some requests. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


