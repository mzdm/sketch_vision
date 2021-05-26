// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_class.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModelClass extends ModelClass {
  @override
  final String class_;

  factory _$ModelClass([void Function(ModelClassBuilder)? updates]) =>
      (new ModelClassBuilder()..update(updates)).build();

  _$ModelClass._({required this.class_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(class_, 'ModelClass', 'class_');
  }

  @override
  ModelClass rebuild(void Function(ModelClassBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelClassBuilder toBuilder() => new ModelClassBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelClass && class_ == other.class_;
  }

  @override
  int get hashCode {
    return $jf($jc(0, class_.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ModelClass')..add('class_', class_))
        .toString();
  }
}

class ModelClassBuilder implements Builder<ModelClass, ModelClassBuilder> {
  _$ModelClass? _$v;

  String? _class_;
  String? get class_ => _$this._class_;
  set class_(String? class_) => _$this._class_ = class_;

  ModelClassBuilder() {
    ModelClass._initializeBuilder(this);
  }

  ModelClassBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _class_ = $v.class_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModelClass other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModelClass;
  }

  @override
  void update(void Function(ModelClassBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ModelClass build() {
    final _$result = _$v ??
        new _$ModelClass._(
            class_: BuiltValueNullFieldError.checkNotNull(
                class_, 'ModelClass', 'class_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
