# ibm_language_translator.model.Language

## Load the model package
```dart
import 'package:ibm_language_translator/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**language** | **String** | The language code for the language (for example, `af`). | [optional] 
**languageName** | **String** | The name of the language in English (for example, `Afrikaans`). | [optional] 
**nativeLanguageName** | **String** | The native name of the language (for example, `Afrikaans`). | [optional] 
**countryCode** | **String** | The country code for the language (for example, `ZA` for South Africa). | [optional] 
**wordsSeparated** | **bool** | Indicates whether words of the language are separated by whitespace: `true` if the words are separated; `false` otherwise. | [optional] 
**direction** | **String** | Indicates the direction of the language: `right_to_left` or `left_to_right`. | [optional] 
**supportedAsSource** | **bool** | Indicates whether the language can be used as the source for translation: `true` if the language can be used as the source; `false` otherwise. | [optional] 
**supportedAsTarget** | **bool** | Indicates whether the language can be used as the target for translation: `true` if the language can be used as the target; `false` otherwise. | [optional] 
**identifiable** | **bool** | Indicates whether the language supports automatic detection: `true` if the language can be detected automatically; `false` otherwise. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)


