import 'dart:convert';
import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart' as dio;
import 'package:ibm_apis/language_translator.dart';
import 'package:ibm_apis/visual_recognition.dart'
    show ClassResult, ClassResultBuilder;
import 'package:sketch_vision_app/app/config.dart';

const _authName = 'IAM';
const _authUsername = 'apikey';

class TranslatorRepository {
  TranslatorRepository({BuiltList<ClassResult>? classes})
      : this.classes = classes ?? BuiltList.from(<ClassResult>[]),
        ibmApi = IbmLanguageTranslator(
          interceptors: [
            BasicAuthInterceptor(),
          ],
        )..setBasicAuth(
            _authName,
            _authUsername,
            EnvConfig.IBM_TRANSLATOR_API_KEY,
          );

  final IbmLanguageTranslator ibmApi;
  final BuiltList<ClassResult> classes;

  Future<dio.Response<TranslationResult>> translateClasses({
    required String targetLanguage,
  }) async {
    final stringsToTranslate = BuiltList<String>(
      classes.map((classResult) => classResult.class_),
    );
    final translateReq = TranslateRequestBuilder()
      ..source_ = 'en'
      ..target = targetLanguage
      ..text = stringsToTranslate.toBuilder();

    final response = await ibmApi.getTranslationApi().translate(
          version: '2018-05-01',
          request: translateReq.build(),
        );

    return response;
  }

  BuiltList<ClassResult> getTranslatedClasses(TranslationResult data) {
    log(jsonEncode(standardSerializers.serialize(data)));

    final translations = data.translations;
    log(translations.toString());

    final translatedBuilder = BuiltList<ClassResult>().toBuilder();
    for (var i = 0; i < translations.length; i++) {
      ClassResult? classResult;
      if (i < classes.length) {
        classResult = classes.elementAt(i);
      }

      final classResultBuilder = ClassResultBuilder();
      final translation = translations.elementAt(i);
      final translationStr = translation.translation;
      final score = classResult?.score ?? 0;

      log('class: $translationStr --- score: score');
      classResultBuilder
        ..class_ = translationStr
        ..score = score;

      translatedBuilder.add(classResultBuilder.build());
    }
    return translatedBuilder.build();
  }
}
