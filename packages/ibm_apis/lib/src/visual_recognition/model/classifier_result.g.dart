// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classifier_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClassifierResult extends ClassifierResult {
  @override
  final String name;
  @override
  final String classifierId;
  @override
  final BuiltList<ClassResult> classes;

  factory _$ClassifierResult(
          [void Function(ClassifierResultBuilder)? updates]) =>
      (new ClassifierResultBuilder()..update(updates)).build();

  _$ClassifierResult._(
      {required this.name, required this.classifierId, required this.classes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'ClassifierResult', 'name');
    BuiltValueNullFieldError.checkNotNull(
        classifierId, 'ClassifierResult', 'classifierId');
    BuiltValueNullFieldError.checkNotNull(
        classes, 'ClassifierResult', 'classes');
  }

  @override
  ClassifierResult rebuild(void Function(ClassifierResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassifierResultBuilder toBuilder() =>
      new ClassifierResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassifierResult &&
        name == other.name &&
        classifierId == other.classifierId &&
        classes == other.classes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, name.hashCode), classifierId.hashCode), classes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClassifierResult')
          ..add('name', name)
          ..add('classifierId', classifierId)
          ..add('classes', classes))
        .toString();
  }
}

class ClassifierResultBuilder
    implements Builder<ClassifierResult, ClassifierResultBuilder> {
  _$ClassifierResult? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _classifierId;
  String? get classifierId => _$this._classifierId;
  set classifierId(String? classifierId) => _$this._classifierId = classifierId;

  ListBuilder<ClassResult>? _classes;
  ListBuilder<ClassResult> get classes =>
      _$this._classes ??= new ListBuilder<ClassResult>();
  set classes(ListBuilder<ClassResult>? classes) => _$this._classes = classes;

  ClassifierResultBuilder() {
    ClassifierResult._initializeBuilder(this);
  }

  ClassifierResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _classifierId = $v.classifierId;
      _classes = $v.classes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassifierResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClassifierResult;
  }

  @override
  void update(void Function(ClassifierResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClassifierResult build() {
    _$ClassifierResult _$result;
    try {
      _$result = _$v ??
          new _$ClassifierResult._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'ClassifierResult', 'name'),
              classifierId: BuiltValueNullFieldError.checkNotNull(
                  classifierId, 'ClassifierResult', 'classifierId'),
              classes: classes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'classes';
        classes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ClassifierResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
