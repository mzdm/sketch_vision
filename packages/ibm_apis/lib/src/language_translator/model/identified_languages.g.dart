// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identified_languages.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdentifiedLanguages extends IdentifiedLanguages {
  @override
  final BuiltList<IdentifiedLanguage> languages;

  factory _$IdentifiedLanguages(
          [void Function(IdentifiedLanguagesBuilder)? updates]) =>
      (new IdentifiedLanguagesBuilder()..update(updates)).build();

  _$IdentifiedLanguages._({required this.languages}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        languages, 'IdentifiedLanguages', 'languages');
  }

  @override
  IdentifiedLanguages rebuild(
          void Function(IdentifiedLanguagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentifiedLanguagesBuilder toBuilder() =>
      new IdentifiedLanguagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdentifiedLanguages && languages == other.languages;
  }

  @override
  int get hashCode {
    return $jf($jc(0, languages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IdentifiedLanguages')
          ..add('languages', languages))
        .toString();
  }
}

class IdentifiedLanguagesBuilder
    implements Builder<IdentifiedLanguages, IdentifiedLanguagesBuilder> {
  _$IdentifiedLanguages? _$v;

  ListBuilder<IdentifiedLanguage>? _languages;
  ListBuilder<IdentifiedLanguage> get languages =>
      _$this._languages ??= new ListBuilder<IdentifiedLanguage>();
  set languages(ListBuilder<IdentifiedLanguage>? languages) =>
      _$this._languages = languages;

  IdentifiedLanguagesBuilder() {
    IdentifiedLanguages._initializeBuilder(this);
  }

  IdentifiedLanguagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _languages = $v.languages.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdentifiedLanguages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdentifiedLanguages;
  }

  @override
  void update(void Function(IdentifiedLanguagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IdentifiedLanguages build() {
    _$IdentifiedLanguages _$result;
    try {
      _$result =
          _$v ?? new _$IdentifiedLanguages._(languages: languages.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        languages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'IdentifiedLanguages', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
