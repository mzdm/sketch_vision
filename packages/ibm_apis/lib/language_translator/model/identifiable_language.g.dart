// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identifiable_language.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdentifiableLanguage extends IdentifiableLanguage {
  @override
  final String language;
  @override
  final String name;

  factory _$IdentifiableLanguage(
          [void Function(IdentifiableLanguageBuilder)? updates]) =>
      (new IdentifiableLanguageBuilder()..update(updates)).build();

  _$IdentifiableLanguage._({required this.language, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        language, 'IdentifiableLanguage', 'language');
    BuiltValueNullFieldError.checkNotNull(name, 'IdentifiableLanguage', 'name');
  }

  @override
  IdentifiableLanguage rebuild(
          void Function(IdentifiableLanguageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentifiableLanguageBuilder toBuilder() =>
      new IdentifiableLanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentifiableLanguage &&
        language == other.language &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, language.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IdentifiableLanguage')
          ..add('language', language)
          ..add('name', name))
        .toString();
  }
}

class IdentifiableLanguageBuilder
    implements Builder<IdentifiableLanguage, IdentifiableLanguageBuilder> {
  _$IdentifiableLanguage? _$v;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  IdentifiableLanguageBuilder() {
    IdentifiableLanguage._initializeBuilder(this);
  }

  IdentifiableLanguageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _language = $v.language;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdentifiableLanguage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdentifiableLanguage;
  }

  @override
  void update(void Function(IdentifiableLanguageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IdentifiableLanguage build() {
    final _$result = _$v ??
        new _$IdentifiableLanguage._(
            language: BuiltValueNullFieldError.checkNotNull(
                language, 'IdentifiableLanguage', 'language'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'IdentifiableLanguage', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
