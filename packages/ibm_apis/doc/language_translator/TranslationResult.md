# ibm_language_translator.model.TranslationResult

## Load the model package
```dart
import 'package:ibm_apis/language_translator.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**wordCount** | **int** | An estimate of the number of words in the input text. | 
**characterCount** | **int** | Number of characters in the input text. | 
**detectedLanguage** | **String** | The language code of the source text if the source language was automatically detected. | [optional] 
**detectedLanguageConfidence** | **double** | A score between 0 and 1 indicating the confidence of source language detection. A higher value indicates greater confidence. This is returned only when the service automatically detects the source language. | [optional] 
**translations** | [**BuiltList&lt;Translation&gt;**](Translation.md) | List of translation output in UTF-8, corresponding to the input text entries. | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)


