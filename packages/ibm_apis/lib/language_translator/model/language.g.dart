// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Language extends Language {
  @override
  final String? language;
  @override
  final String? languageName;
  @override
  final String? nativeLanguageName;
  @override
  final String? countryCode;
  @override
  final bool? wordsSeparated;
  @override
  final String? direction;
  @override
  final bool? supportedAsSource;
  @override
  final bool? supportedAsTarget;
  @override
  final bool? identifiable;

  factory _$Language([void Function(LanguageBuilder)? updates]) =>
      (new LanguageBuilder()..update(updates)).build();

  _$Language._(
      {this.language,
      this.languageName,
      this.nativeLanguageName,
      this.countryCode,
      this.wordsSeparated,
      this.direction,
      this.supportedAsSource,
      this.supportedAsTarget,
      this.identifiable})
      : super._();

  @override
  Language rebuild(void Function(LanguageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LanguageBuilder toBuilder() => new LanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Language &&
        language == other.language &&
        languageName == other.languageName &&
        nativeLanguageName == other.nativeLanguageName &&
        countryCode == other.countryCode &&
        wordsSeparated == other.wordsSeparated &&
        direction == other.direction &&
        supportedAsSource == other.supportedAsSource &&
        supportedAsTarget == other.supportedAsTarget &&
        identifiable == other.identifiable;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, language.hashCode),
                                    languageName.hashCode),
                                nativeLanguageName.hashCode),
                            countryCode.hashCode),
                        wordsSeparated.hashCode),
                    direction.hashCode),
                supportedAsSource.hashCode),
            supportedAsTarget.hashCode),
        identifiable.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Language')
          ..add('language', language)
          ..add('languageName', languageName)
          ..add('nativeLanguageName', nativeLanguageName)
          ..add('countryCode', countryCode)
          ..add('wordsSeparated', wordsSeparated)
          ..add('direction', direction)
          ..add('supportedAsSource', supportedAsSource)
          ..add('supportedAsTarget', supportedAsTarget)
          ..add('identifiable', identifiable))
        .toString();
  }
}

class LanguageBuilder implements Builder<Language, LanguageBuilder> {
  _$Language? _$v;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _languageName;
  String? get languageName => _$this._languageName;
  set languageName(String? languageName) => _$this._languageName = languageName;

  String? _nativeLanguageName;
  String? get nativeLanguageName => _$this._nativeLanguageName;
  set nativeLanguageName(String? nativeLanguageName) =>
      _$this._nativeLanguageName = nativeLanguageName;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  bool? _wordsSeparated;
  bool? get wordsSeparated => _$this._wordsSeparated;
  set wordsSeparated(bool? wordsSeparated) =>
      _$this._wordsSeparated = wordsSeparated;

  String? _direction;
  String? get direction => _$this._direction;
  set direction(String? direction) => _$this._direction = direction;

  bool? _supportedAsSource;
  bool? get supportedAsSource => _$this._supportedAsSource;
  set supportedAsSource(bool? supportedAsSource) =>
      _$this._supportedAsSource = supportedAsSource;

  bool? _supportedAsTarget;
  bool? get supportedAsTarget => _$this._supportedAsTarget;
  set supportedAsTarget(bool? supportedAsTarget) =>
      _$this._supportedAsTarget = supportedAsTarget;

  bool? _identifiable;
  bool? get identifiable => _$this._identifiable;
  set identifiable(bool? identifiable) => _$this._identifiable = identifiable;

  LanguageBuilder() {
    Language._initializeBuilder(this);
  }

  LanguageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _language = $v.language;
      _languageName = $v.languageName;
      _nativeLanguageName = $v.nativeLanguageName;
      _countryCode = $v.countryCode;
      _wordsSeparated = $v.wordsSeparated;
      _direction = $v.direction;
      _supportedAsSource = $v.supportedAsSource;
      _supportedAsTarget = $v.supportedAsTarget;
      _identifiable = $v.identifiable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Language other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Language;
  }

  @override
  void update(void Function(LanguageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Language build() {
    final _$result = _$v ??
        new _$Language._(
            language: language,
            languageName: languageName,
            nativeLanguageName: nativeLanguageName,
            countryCode: countryCode,
            wordsSeparated: wordsSeparated,
            direction: direction,
            supportedAsSource: supportedAsSource,
            supportedAsTarget: supportedAsTarget,
            identifiable: identifiable);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
