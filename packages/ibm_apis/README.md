# packages

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

These Dart packages are generated from the OpenAPI spec with the help from the [OpenAPI Generator](https://openapi-generator.tech):

- API version: 3.0
- Build package: org.openapitools.codegen.languages.DartDioNextClientCodegen

