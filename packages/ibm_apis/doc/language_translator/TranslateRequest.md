# ibm_language_translator.model.TranslateRequest

## Load the model package
```dart
import 'package:ibm_language_translator/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **BuiltList&lt;String&gt;** | Input text in UTF-8 encoding. Submit a maximum of 50 KB (51,200 bytes) of text with a single request. Multiple elements result in multiple translations in the response. | 
**modelId** | **String** | The model to use for translation. For example, `en-de` selects the IBM-provided base model for English-to-German translation. A model ID overrides the `source` and `target` parameters and is required if you use a custom model. If no model ID is specified, you must specify at least a target language. | [optional] 
**source_** | **String** | Language code that specifies the language of the input text. If omitted, the service derives the source language from the input text. The input must contain sufficient text for the service to identify the language reliably. | [optional] 
**target** | **String** | Language code that specifies the target language for translation. Required if model ID is not specified. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)


