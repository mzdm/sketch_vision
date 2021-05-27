# ibm_language_translator.model.TranslationModel

## Load the model package
```dart
import 'package:ibm_language_translator/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**modelId** | **String** | A globally unique string that identifies the underlying model that is used for translation | 
**name** | **String** | Optional name that can be specified when the model is created. | [optional] 
**source_** | **String** | Translation source language code | [optional] 
**target** | **String** | Translation target language code | [optional] 
**baseModelId** | **String** | Model ID of the base model that was used to customize the model. If the model is not a custom model, this will be an empty string. | [optional] 
**domain** | **String** | The domain of the translation model. | [optional] 
**customizable** | **bool** | Whether this model can be used as a base for customization. Customized models are not further customizable, and some base models are not customizable. | [optional] 
**defaultModel** | **bool** | Whether or not the model is a default model. A default model is the model for a given language pair that will be used when that language pair is specified in the source and target parameters. | [optional] 
**owner** | **String** | Either an empty string, indicating the model is not a custom model, or the ID of the service instance that created the model. | [optional] 
**status** | **String** | Availability of a model. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)


