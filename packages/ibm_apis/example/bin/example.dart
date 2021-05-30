import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart' as dio;
import 'package:ibm_apis/language_translator.dart' as lang;
import 'package:ibm_apis/visual_recognition.dart';

Future<void> main(List<String> arguments) async {
  const name = 'IAM';
  const username = 'apikey';

  final visualRecognitionApiKey = 'VISUAL_RECOGNITION_API_KEY';
  final translatorApiKey = 'LANGUAGE_TRANSLATOR_API_KEY';

  final visualApi = IbmVisualRecognition(
    interceptors: [
      BasicAuthInterceptor(),
    ],
  )..setBasicAuth(name, username, visualRecognitionApiKey);

  final translatorApi = lang.IbmLanguageTranslator(
    interceptors: [
      lang.BasicAuthInterceptor(),
    ],
  )..setBasicAuth(name, username, translatorApiKey);

  // Visual Recognition example
  try {
    final file = File('assets/example.jpg').readAsBytesSync();
    final classifiedImageResponse = await visualApi.getGeneralApi().classify(
          imagesFile: dio.MultipartFile.fromBytes(file, filename: 'example'),
          version: '2018-03-19',
          threshold: 0.0,
        );

    // final classifiedImageResponse = await visualApi.getGeneralApi().classify(
    //       url: 'https://a.rgbimg.com/users/j/ja/jazza/300/2djtgJJ.jpg',
    //       version: '2018-03-19',
    //       threshold: 0.0,
    //     );

    final ClassifiedImages? data = classifiedImageResponse.data;
    print(data?.images.first.classifiers.first.classes);
    // print(jsonEncode(standardSerializers.serialize(data)));
  } catch (e) {
    print(e);
  }

  // Language Translator example
  try {
    final toTranslate = BuiltList<String>.from(['bread', 'car', 'milk']);
    final translateReq = lang.TranslateRequestBuilder()
        ..source_ = 'en'
        ..target = 'de'
        ..text = toTranslate.toBuilder();
    final translateResponse = await translatorApi.getTranslationApi().translate(
        version: '2018-05-01',
        request: translateReq.build(),
      );
    final lang.TranslationResult? data = translateResponse.data;
    print(data?.translations.toString());
    print(jsonEncode(lang.standardSerializers.serialize(data)));
  } catch (e) {
    print(e);
  }
}
