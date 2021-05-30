part of 'translator_bloc.dart';

abstract class TranslatorEvent extends Equatable {
  const TranslatorEvent();
}

class TranslatorTranslated extends TranslatorEvent {
  final String targetLanguage;

  const TranslatorTranslated({
    required this.targetLanguage,
  });

  @override
  List<Object> get props => [targetLanguage];
}
