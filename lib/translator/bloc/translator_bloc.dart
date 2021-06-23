import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart' as dio;
import 'package:equatable/equatable.dart';
import 'package:ibm_apis/visual_recognition.dart' show ClassResult;
import 'package:sketch_vision_app/translator/repositories/translator_repository.dart';

part 'translator_event.dart';
part 'translator_state.dart';

class TranslatorBloc extends Bloc<TranslatorEvent, TranslatorState> {
  TranslatorBloc({
    required this.translatorRepository,
  }) : super(TranslatorInitial());

  final TranslatorRepository translatorRepository;

  @override
  Stream<TranslatorState> mapEventToState(TranslatorEvent event) async* {
    if (event is TranslatorTranslated) {
      yield TranslatorLoading();

      try {
        final translateResponse = await translatorRepository.translateClasses(
          targetLanguage: event.targetLanguage,
        );

        final translationData = translateResponse.data;
        final translations = translationData?.translations;

        if (translationData == null || translations == null) {
          throw ('translations: null');
        } else if (translations.isEmpty) {
          throw ('translations: empty');
        } else {
          final translatedClasses = translatorRepository.getTranslatedClasses(
            translationData,
          );
          yield TranslatorSuccess(translatedClasses);
        }
      } catch (e) {
        // in translation view do not display fake data
        log(e.toString());
        if (e is dio.DioError) {
          yield TranslatorError(e.message);
        } else {
          yield TranslatorError(e.toString());
        }
      }
    }
  }
}
