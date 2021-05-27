// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_models.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TranslationModels extends TranslationModels {
  @override
  final BuiltList<TranslationModel> models;

  factory _$TranslationModels(
          [void Function(TranslationModelsBuilder)? updates]) =>
      (new TranslationModelsBuilder()..update(updates)).build();

  _$TranslationModels._({required this.models}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        models, 'TranslationModels', 'models');
  }

  @override
  TranslationModels rebuild(void Function(TranslationModelsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationModelsBuilder toBuilder() =>
      new TranslationModelsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslationModels && models == other.models;
  }

  @override
  int get hashCode {
    return $jf($jc(0, models.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TranslationModels')
          ..add('models', models))
        .toString();
  }
}

class TranslationModelsBuilder
    implements Builder<TranslationModels, TranslationModelsBuilder> {
  _$TranslationModels? _$v;

  ListBuilder<TranslationModel>? _models;
  ListBuilder<TranslationModel> get models =>
      _$this._models ??= new ListBuilder<TranslationModel>();
  set models(ListBuilder<TranslationModel>? models) => _$this._models = models;

  TranslationModelsBuilder() {
    TranslationModels._initializeBuilder(this);
  }

  TranslationModelsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _models = $v.models.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslationModels other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TranslationModels;
  }

  @override
  void update(void Function(TranslationModelsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TranslationModels build() {
    _$TranslationModels _$result;
    try {
      _$result = _$v ?? new _$TranslationModels._(models: models.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'models';
        models.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TranslationModels', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
