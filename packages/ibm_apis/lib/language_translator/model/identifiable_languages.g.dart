// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identifiable_languages.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdentifiableLanguages extends IdentifiableLanguages {
  @override
  final BuiltList<IdentifiableLanguage> languages;

  factory _$IdentifiableLanguages(
          [void Function(IdentifiableLanguagesBuilder)? updates]) =>
      (new IdentifiableLanguagesBuilder()..update(updates)).build();

  _$IdentifiableLanguages._({required this.languages}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        languages, 'IdentifiableLanguages', 'languages');
  }

  @override
  IdentifiableLanguages rebuild(
          void Function(IdentifiableLanguagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentifiableLanguagesBuilder toBuilder() =>
      new IdentifiableLanguagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentifiableLanguages && languages == other.languages;
  }

  @override
  int get hashCode {
    return $jf($jc(0, languages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IdentifiableLanguages')
          ..add('languages', languages))
        .toString();
  }
}

class IdentifiableLanguagesBuilder
    implements Builder<IdentifiableLanguages, IdentifiableLanguagesBuilder> {
  _$IdentifiableLanguages? _$v;

  ListBuilder<IdentifiableLanguage>? _languages;
  ListBuilder<IdentifiableLanguage> get languages =>
      _$this._languages ??= new ListBuilder<IdentifiableLanguage>();
  set languages(ListBuilder<IdentifiableLanguage>? languages) =>
      _$this._languages = languages;

  IdentifiableLanguagesBuilder() {
    IdentifiableLanguages._initializeBuilder(this);
  }

  IdentifiableLanguagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _languages = $v.languages.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdentifiableLanguages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdentifiableLanguages;
  }

  @override
  void update(void Function(IdentifiableLanguagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IdentifiableLanguages build() {
    _$IdentifiableLanguages _$result;
    try {
      _$result =
          _$v ?? new _$IdentifiableLanguages._(languages: languages.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        languages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'IdentifiableLanguages', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
