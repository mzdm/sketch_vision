# ibm_language_translator.model.DocumentStatus

## Load the model package
```dart
import 'package:ibm_language_translator/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**documentId** | **String** | System generated ID identifying a document being translated using one specific translation model | 
**filename** | **String** | filename from the submission (if it was missing in the multipart-form, 'noname.<ext matching content type>' is used. | 
**status** | [**TranslationStatus**](TranslationStatus.md) |  | 
**modelId** | **String** | A globally unique string that identifies the underlying model that is used for translation | 
**baseModelId** | **String** | Model ID of the base model that was used to customize the model. If the model is not a custom model, this will be absent or an empty string. | [optional] 
**source_** | **String** | Translation source language code | 
**detectedLanguageConfidence** | **double** | A score between 0 and 1 indicating the confidence of source language detection. A higher value indicates greater confidence. This is returned only when the service automatically detects the source language. | [optional] 
**target** | **String** | Translation target language code | 
**created** | [**DateTime**](DateTime.md) | The time when the document was submitted. | 
**completed** | [**DateTime**](DateTime.md) | The time when the translation completed. | [optional] 
**wordCount** | **int** | An estimate of the number of words in the source document. Returned only if `status` is `available`. | [optional] 
**characterCount** | **int** | The number of characters in the source document, present only if status=available. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)


