# ibm_apis

IBM Cloud APIs

- **Visual Recognition V3**

The IBM Watson Visual Recognition service uses deep learning algorithms to identify scenes and objects in images that you upload to the service. You can create and train a custom classifier to identify subjects that suit your needs.

**Note:** IBM Watson&trade; Visual Recognition is discontinued. Existing instances are supported until 1 December 2021, but as of 7 January 2021, you can't create instances. Any instance that is provisioned on 1 December 2021 will be deleted.

- **Language Translator**

TODO

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
*CoreMLApi* | [**getCoreMlModel**](doc/visual_recognition/CoreMLApi.md#getcoremlmodel) | **get** /v3/classifiers/{classifier_id}/core_ml_model | Retrieve a Core ML model of a classifier
*CustomApi* | [**createClassifier**](doc/visual_recognition/CustomApi.md#createclassifier) | **post** /v3/classifiers | Create a classifier
*CustomApi* | [**deleteClassifier**](doc/visual_recognition/CustomApi.md#deleteclassifier) | **delete** /v3/classifiers/{classifier_id} | Delete a classifier
*CustomApi* | [**getClassifier**](doc/visual_recognition/CustomApi.md#getclassifier) | **get** /v3/classifiers/{classifier_id} | Retrieve classifier details
*CustomApi* | [**listClassifiers**](doc/visual_recognition/CustomApi.md#listclassifiers) | **get** /v3/classifiers | Retrieve a list of classifiers
*CustomApi* | [**updateClassifier**](doc/visual_recognition/CustomApi.md#updateclassifier) | **post** /v3/classifiers/{classifier_id} | Update a classifier
*GeneralApi* | [**classify**](doc/visual_recognition/GeneralApi.md#classify) | **post** /v3/classify | Classify images
*GeneralApi* | [**getClassify**](doc/visual_recognition/GeneralApi.md#getclassify) | **get** /v3/classify | Classify an image
*UserDataApi* | [**deleteUserData**](doc/visual_recognition/UserDataApi.md#deleteuserdata) | **delete** /v3/user_data | Delete labeled data


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


## Documentation For Authorization


## IAM

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


These Dart packages are generated from the OpenAPI spec with the help from the [OpenAPI Generator](https://openapi-generator.tech):

- API version: 3.0
- Build package: org.openapitools.codegen.languages.DartDioNextClientCodegen

