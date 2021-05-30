part of 'translator_bloc.dart';

abstract class TranslatorState extends Equatable {
  const TranslatorState();
}

class TranslatorInitial extends TranslatorState {
  @override
  List<Object> get props => [];
}

class TranslatorLoading extends TranslatorState {
  @override
  List<Object> get props => [];
}

class TranslatorError extends TranslatorState {

  final String message;

  TranslatorError(this.message);

  @override
  List<Object> get props => [message];
}

class TranslatorSuccess extends TranslatorState {

  final BuiltList<ClassResult> translatedClasses;

  TranslatorSuccess(this.translatedClasses);

  @override
  List<Object> get props => [translatedClasses];
}