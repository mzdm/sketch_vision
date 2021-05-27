// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'languages.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Languages extends Languages {
  @override
  final BuiltList<Language> languages;

  factory _$Languages([void Function(LanguagesBuilder)? updates]) =>
      (new LanguagesBuilder()..update(updates)).build();

  _$Languages._({required this.languages}) : super._() {
    BuiltValueNullFieldError.checkNotNull(languages, 'Languages', 'languages');
  }

  @override
  Languages rebuild(void Function(LanguagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LanguagesBuilder toBuilder() => new LanguagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Languages && languages == other.languages;
  }

  @override
  int get hashCode {
    return $jf($jc(0, languages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Languages')
          ..add('languages', languages))
        .toString();
  }
}

class LanguagesBuilder implements Builder<Languages, LanguagesBuilder> {
  _$Languages? _$v;

  ListBuilder<Language>? _languages;
  ListBuilder<Language> get languages =>
      _$this._languages ??= new ListBuilder<Language>();
  set languages(ListBuilder<Language>? languages) =>
      _$this._languages = languages;

  LanguagesBuilder() {
    Languages._initializeBuilder(this);
  }

  LanguagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _languages = $v.languages.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Languages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Languages;
  }

  @override
  void update(void Function(LanguagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Languages build() {
    _$Languages _$result;
    try {
      _$result = _$v ?? new _$Languages._(languages: languages.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        languages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Languages', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
