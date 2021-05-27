// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identified_language.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdentifiedLanguage extends IdentifiedLanguage {
  @override
  final String language;
  @override
  final double confidence;

  factory _$IdentifiedLanguage(
          [void Function(IdentifiedLanguageBuilder)? updates]) =>
      (new IdentifiedLanguageBuilder()..update(updates)).build();

  _$IdentifiedLanguage._({required this.language, required this.confidence})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        language, 'IdentifiedLanguage', 'language');
    BuiltValueNullFieldError.checkNotNull(
        confidence, 'IdentifiedLanguage', 'confidence');
  }

  @override
  IdentifiedLanguage rebuild(
          void Function(IdentifiedLanguageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentifiedLanguageBuilder toBuilder() =>
      new IdentifiedLanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentifiedLanguage &&
        language == other.language &&
        confidence == other.confidence;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, language.hashCode), confidence.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IdentifiedLanguage')
          ..add('language', language)
          ..add('confidence', confidence))
        .toString();
  }
}

class IdentifiedLanguageBuilder
    implements Builder<IdentifiedLanguage, IdentifiedLanguageBuilder> {
  _$IdentifiedLanguage? _$v;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  double? _confidence;
  double? get confidence => _$this._confidence;
  set confidence(double? confidence) => _$this._confidence = confidence;

  IdentifiedLanguageBuilder() {
    IdentifiedLanguage._initializeBuilder(this);
  }

  IdentifiedLanguageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _language = $v.language;
      _confidence = $v.confidence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdentifiedLanguage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdentifiedLanguage;
  }

  @override
  void update(void Function(IdentifiedLanguageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IdentifiedLanguage build() {
    final _$result = _$v ??
        new _$IdentifiedLanguage._(
            language: BuiltValueNullFieldError.checkNotNull(
                language, 'IdentifiedLanguage', 'language'),
            confidence: BuiltValueNullFieldError.checkNotNull(
                confidence, 'IdentifiedLanguage', 'confidence'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
