import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart' as dio;
import 'package:equatable/equatable.dart';
import 'package:ibm_apis/language_translator.dart';
import 'package:ibm_apis/visual_recognition.dart'
    show ClassResult, ClassResultBuilder;
import 'package:sketch_vision_app/app/config.dart';

part 'translator_event.dart';

part 'translator_state.dart';

const _authName = 'IAM';
const _authUsername = 'apikey';

class TranslatorBloc extends Bloc<TranslatorEvent, TranslatorState> {
  TranslatorBloc({
    required this.classes,
  })  : translatorApi = IbmLanguageTranslator(
          interceptors: [
            BasicAuthInterceptor(),
          ],
        ),
        super(TranslatorInitial()) {
    translatorApi.setBasicAuth(
      _authName,
      _authUsername,
      'API_KEY',
    );
  }

  final BuiltList<ClassResult> classes;
  final IbmLanguageTranslator translatorApi;

  @override
  Stream<TranslatorState> mapEventToState(TranslatorEvent event) async* {
    if (event is TranslatorTranslated) {
      final targetLanguage = event.targetLanguage;

      final toTranslate = BuiltList<String>(
        classes.map((classResult) => classResult.class_),
      );
      final translateReq = TranslateRequestBuilder()
        ..source_ = 'en'
        ..target = targetLanguage
        ..text = toTranslate.toBuilder();

      try {
        yield TranslatorLoading();

        BuiltList<Translation>? translations;
        if (!Config.testMode) {
          final translateResponse =
              await translatorApi.getTranslationApi().translate(
                    version: '2018-05-01',
                    request: translateReq.build(),
                  );
          final TranslationResult? data = translateResponse.data;
          translations = data?.translations;
          print(jsonEncode(standardSerializers.serialize(data)));
        } else {
          translations = _loadFakeData();
        }

        if (translations == null) {
          log('translations: null');
        } else if (translations.isEmpty) {
          log('translations: empty');
        } else {
          log(translations.toString());

          final translatedBuilder = BuiltList<ClassResult>().toBuilder();
          for (var i = 0; i < translations.length; i++) {
            final translation = translations.elementAt(i);

            ClassResult? classResult;
            if (i < classes.length) {
              classResult = classes.elementAt(i);
            }

            final classResultBuilder = ClassResultBuilder();
            log('class: ${translation.translation} --- score: ${classResult?.score ?? 0}');
            classResultBuilder
              ..class_ = translation.translation
              ..score = classResult == null ? 0 : classResult.score;

            translatedBuilder.add(classResultBuilder.build());
          }
          yield TranslatorSuccess(translatedBuilder.build());
        }
      } catch (e) {
        log(e.toString());
        if (e is dio.DioError) {
          yield TranslatorError(e.message);
        } else {
          yield TranslatorError(e.toString());
        }
      }
    }
  }

  BuiltList<Translation> _loadFakeData() {
    final List<dynamic> fakeData = json.decode(_fakeResponse);
    return BuiltList.from(
      fakeData.map(
        (value) => standardSerializers.deserializeWith(
          Translation.serializer,
          value,
        ),
      ),
    );
  }
}

const _fakeResponse = '''
[{"translation":"měřicí přístroj"},{"translation":"časový údaj"},{"translation":"čas"},{"translation":"analogový čas"},{"translation":"indikátor"},{"translation":"přístroj"},{"translation":"barva odstínu šedé"},{"translation":"nástěnné hodiny"},{"translation":"růžová barva"}]
''';
