# IBM Cloud APIs

- **[Visual Recognition V3](#documentation-for-visual-recognition)**

The IBM Watson Visual Recognition service uses deep learning algorithms to identify scenes and objects in images that you upload to the service. You can create and train a custom classifier to identify subjects that suit your needs.

**Note:** IBM Watson&trade; Visual Recognition is discontinued. Existing instances are supported until 1 December 2021, but as of 7 January 2021, you can't create instances. Any instance that is provisioned on 1 December 2021 will be deleted.

- **[Language Translator](#documentation-for-language-translator)**

IBM Watson&trade; Language Translator translates text from one language to another. The service offers multiple IBM-provided translation models that you can customize based on your unique terminology and language. Use Language Translator to take news from across the globe and present it in your language, communicate with your customers in their own language, and more.

## Requirements

* Dart 2.12.0
* Dio 4.0.0+

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```yaml
dependencies:
  ibm_apis:
    git:
      url: https://github.com/mzdm/sketch_vision_app.git
      path: packages/ibm_apis
```

### Local development
To use the package from your local drive, please include the following in pubspec.yaml
```yaml
dependencies:
  ibm_apis:
    path: /path/to/ibm_apis
```


## Documentation for Visual Recognition

All URIs are relative to *https://api.us-south.visual-recognition.watson.cloud.ibm.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CoreMLApi* | [**getCoreMlModel**](doc/visual_recognition/CoreMLApi.md#getcoremlmodel) | **GET** /v3/classifiers/{classifier_id}/core_ml_model | Retrieve a Core ML model of a classifier
*CustomApi* | [**createClassifier**](doc/visual_recognition/CustomApi.md#createclassifier) | **POST** /v3/classifiers | Create a classifier
*CustomApi* | [**deleteClassifier**](doc/visual_recognition/CustomApi.md#deleteclassifier) | **DELETE** /v3/classifiers/{classifier_id} | Delete a classifier
*CustomApi* | [**getClassifier**](doc/visual_recognition/CustomApi.md#getclassifier) | **GET** /v3/classifiers/{classifier_id} | Retrieve classifier details
*CustomApi* | [**listClassifiers**](doc/visual_recognition/CustomApi.md#listclassifiers) | **GET** /v3/classifiers | Retrieve a list of classifiers
*CustomApi* | [**updateClassifier**](doc/visual_recognition/CustomApi.md#updateclassifier) | **POST** /v3/classifiers/{classifier_id} | Update a classifier
*GeneralApi* | [**classify**](doc/visual_recognition/GeneralApi.md#classify) | **POST** /v3/classify | Classify images
*GeneralApi* | [**getClassify**](doc/visual_recognition/GeneralApi.md#getclassify) | **GET** /v3/classify | Classify an image
*UserDataApi* | [**deleteUserData**](doc/visual_recognition/UserDataApi.md#deleteuserdata) | **DELETE** /v3/user_data | Delete labeled data


### Documentation For Visual Recognition models

 - [ClassResult](doc/visual_recognition/ClassResult.md)
 - [ClassifiedImage](doc/visual_recognition/ClassifiedImage.md)
 - [ClassifiedImages](doc/visual_recognition/ClassifiedImages.md)
 - [Classifier](doc/visual_recognition/Classifier.md)
 - [ClassifierResult](doc/visual_recognition/ClassifierResult.md)
 - [Classifiers](doc/visual_recognition/Classifiers.md)
 - [ErrorHTML](doc/visual_recognition/ErrorHTML.md)
 - [ErrorInfo](doc/visual_recognition/ErrorInfo.md)
 - [ErrorResponse](doc/visual_recognition/ErrorResponse.md)
 - [ModelClass](doc/visual_recognition/ModelClass.md)
 - [WarningInfo](doc/visual_recognition/WarningInfo.md)


## Documentation for Language Translator

All URIs are relative to *https://api.us-south.language-translator.watson.cloud.ibm.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DocumentTranslationApi* | [**deleteDocument**](doc/language_translator/DocumentTranslationApi.md#deletedocument) | **DELETE** /v3/documents/{document_id} | Delete document
*DocumentTranslationApi* | [**getDocumentStatus**](doc/language_translator/DocumentTranslationApi.md#getdocumentstatus) | **GET** /v3/documents/{document_id} | Get document status
*DocumentTranslationApi* | [**getTranslatedDocument**](doc/language_translator/DocumentTranslationApi.md#gettranslateddocument) | **GET** /v3/documents/{document_id}/translated_document | Get translated document
*DocumentTranslationApi* | [**listDocuments**](doc/language_translator/DocumentTranslationApi.md#listdocuments) | **GET** /v3/documents | List documents
*DocumentTranslationApi* | [**translateDocument**](doc/language_translator/DocumentTranslationApi.md#translatedocument) | **POST** /v3/documents | Translate document
*IdentificationApi* | [**identify**](doc/language_translator/IdentificationApi.md#identify) | **POST** /v3/identify | Identify language
*IdentificationApi* | [**listIdentifiableLanguages**](doc/language_translator/IdentificationApi.md#listidentifiablelanguages) | **GET** /v3/identifiable_languages | List identifiable languages
*LanguagesApi* | [**listLanguages**](doc/language_translator/LanguagesApi.md#listlanguages) | **GET** /v3/languages | List supported languages
*ModelsApi* | [**createModel**](doc/language_translator/ModelsApi.md#createmodel) | **POST** /v3/models | Create model
*ModelsApi* | [**deleteModel**](doc/language_translator/ModelsApi.md#deletemodel) | **DELETE** /v3/models/{model_id} | Delete model
*ModelsApi* | [**getModel**](doc/language_translator/ModelsApi.md#getmodel) | **GET** /v3/models/{model_id} | Get model details
*ModelsApi* | [**listModels**](doc/language_translator/ModelsApi.md#listmodels) | **GET** /v3/models | List models
*TranslationApi* | [**translate**](doc/language_translator/TranslationApi.md#translate) | **POST** /v3/translate | Translate


### Documentation for Language Translator models

 - [DeleteModelResult](doc/language_translator/DeleteModelResult.md)
 - [DocumentList](doc/language_translator/DocumentList.md)
 - [DocumentStatus](doc/language_translator/DocumentStatus.md)
 - [ErrorResponse](doc/language_translator/ErrorResponse.md)
 - [IdentifiableLanguage](doc/language_translator/IdentifiableLanguage.md)
 - [IdentifiableLanguages](doc/language_translator/IdentifiableLanguages.md)
 - [IdentifiedLanguage](doc/language_translator/IdentifiedLanguage.md)
 - [IdentifiedLanguages](doc/language_translator/IdentifiedLanguages.md)
 - [Language](doc/language_translator/Language.md)
 - [Languages](doc/language_translator/Languages.md)
 - [TranslateRequest](doc/language_translator/TranslateRequest.md)
 - [Translation](doc/language_translator/Translation.md)
 - [TranslationModel](doc/language_translator/TranslationModel.md)
 - [TranslationModels](doc/language_translator/TranslationModels.md)
 - [TranslationResult](doc/language_translator/TranslationResult.md)
 - [TranslationStatus](doc/language_translator/TranslationStatus.md)


## Documentation For Authorization

## IAM

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


These Dart packages are generated from the OpenAPI spec with the help from the [OpenAPI Generator](https://openapi-generator.tech):

- API version: 3.0
- Build package: org.openapitools.codegen.languages.DartDioNextClientCodegen

