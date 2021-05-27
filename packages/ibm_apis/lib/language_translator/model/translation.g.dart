// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Translation extends Translation {
  @override
  final String translation;

  factory _$Translation([void Function(TranslationBuilder)? updates]) =>
      (new TranslationBuilder()..update(updates)).build();

  _$Translation._({required this.translation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        translation, 'Translation', 'translation');
  }

  @override
  Translation rebuild(void Function(TranslationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationBuilder toBuilder() => new TranslationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Translation && translation == other.translation;
  }

  @override
  int get hashCode {
    return $jf($jc(0, translation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Translation')
          ..add('translation', translation))
        .toString();
  }
}

class TranslationBuilder implements Builder<Translation, TranslationBuilder> {
  _$Translation? _$v;

  String? _translation;
  String? get translation => _$this._translation;
  set translation(String? translation) => _$this._translation = translation;

  TranslationBuilder() {
    Translation._initializeBuilder(this);
  }

  TranslationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _translation = $v.translation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Translation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Translation;
  }

  @override
  void update(void Function(TranslationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Translation build() {
    final _$result = _$v ??
        new _$Translation._(
            translation: BuiltValueNullFieldError.checkNotNull(
                translation, 'Translation', 'translation'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
