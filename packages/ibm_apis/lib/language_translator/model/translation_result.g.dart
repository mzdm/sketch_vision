// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TranslationResult extends TranslationResult {
  @override
  final int wordCount;
  @override
  final int characterCount;
  @override
  final String? detectedLanguage;
  @override
  final double? detectedLanguageConfidence;
  @override
  final BuiltList<Translation> translations;

  factory _$TranslationResult(
          [void Function(TranslationResultBuilder)? updates]) =>
      (new TranslationResultBuilder()..update(updates)).build();

  _$TranslationResult._(
      {required this.wordCount,
      required this.characterCount,
      this.detectedLanguage,
      this.detectedLanguageConfidence,
      required this.translations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        wordCount, 'TranslationResult', 'wordCount');
    BuiltValueNullFieldError.checkNotNull(
        characterCount, 'TranslationResult', 'characterCount');
    BuiltValueNullFieldError.checkNotNull(
        translations, 'TranslationResult', 'translations');
  }

  @override
  TranslationResult rebuild(void Function(TranslationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationResultBuilder toBuilder() =>
      new TranslationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslationResult &&
        wordCount == other.wordCount &&
        characterCount == other.characterCount &&
        detectedLanguage == other.detectedLanguage &&
        detectedLanguageConfidence == other.detectedLanguageConfidence &&
        translations == other.translations;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, wordCount.hashCode), characterCount.hashCode),
                detectedLanguage.hashCode),
            detectedLanguageConfidence.hashCode),
        translations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TranslationResult')
          ..add('wordCount', wordCount)
          ..add('characterCount', characterCount)
          ..add('detectedLanguage', detectedLanguage)
          ..add('detectedLanguageConfidence', detectedLanguageConfidence)
          ..add('translations', translations))
        .toString();
  }
}

class TranslationResultBuilder
    implements Builder<TranslationResult, TranslationResultBuilder> {
  _$TranslationResult? _$v;

  int? _wordCount;
  int? get wordCount => _$this._wordCount;
  set wordCount(int? wordCount) => _$this._wordCount = wordCount;

  int? _characterCount;
  int? get characterCount => _$this._characterCount;
  set characterCount(int? characterCount) =>
      _$this._characterCount = characterCount;

  String? _detectedLanguage;
  String? get detectedLanguage => _$this._detectedLanguage;
  set detectedLanguage(String? detectedLanguage) =>
      _$this._detectedLanguage = detectedLanguage;

  double? _detectedLanguageConfidence;
  double? get detectedLanguageConfidence => _$this._detectedLanguageConfidence;
  set detectedLanguageConfidence(double? detectedLanguageConfidence) =>
      _$this._detectedLanguageConfidence = detectedLanguageConfidence;

  ListBuilder<Translation>? _translations;
  ListBuilder<Translation> get translations =>
      _$this._translations ??= new ListBuilder<Translation>();
  set translations(ListBuilder<Translation>? translations) =>
      _$this._translations = translations;

  TranslationResultBuilder() {
    TranslationResult._initializeBuilder(this);
  }

  TranslationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wordCount = $v.wordCount;
      _characterCount = $v.characterCount;
      _detectedLanguage = $v.detectedLanguage;
      _detectedLanguageConfidence = $v.detectedLanguageConfidence;
      _translations = $v.translations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TranslationResult;
  }

  @override
  void update(void Function(TranslationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TranslationResult build() {
    _$TranslationResult _$result;
    try {
      _$result = _$v ??
          new _$TranslationResult._(
              wordCount: BuiltValueNullFieldError.checkNotNull(
                  wordCount, 'TranslationResult', 'wordCount'),
              characterCount: BuiltValueNullFieldError.checkNotNull(
                  characterCount, 'TranslationResult', 'characterCount'),
              detectedLanguage: detectedLanguage,
              detectedLanguageConfidence: detectedLanguageConfidence,
              translations: translations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'translations';
        translations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TranslationResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
