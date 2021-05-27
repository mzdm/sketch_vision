// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classifiers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Classifiers extends Classifiers {
  @override
  final BuiltList<Classifier> classifiers;

  factory _$Classifiers([void Function(ClassifiersBuilder)? updates]) =>
      (new ClassifiersBuilder()..update(updates)).build();

  _$Classifiers._({required this.classifiers}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        classifiers, 'Classifiers', 'classifiers');
  }

  @override
  Classifiers rebuild(void Function(ClassifiersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassifiersBuilder toBuilder() => new ClassifiersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Classifiers && classifiers == other.classifiers;
  }

  @override
  int get hashCode {
    return $jf($jc(0, classifiers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Classifiers')
          ..add('classifiers', classifiers))
        .toString();
  }
}

class ClassifiersBuilder implements Builder<Classifiers, ClassifiersBuilder> {
  _$Classifiers? _$v;

  ListBuilder<Classifier>? _classifiers;
  ListBuilder<Classifier> get classifiers =>
      _$this._classifiers ??= new ListBuilder<Classifier>();
  set classifiers(ListBuilder<Classifier>? classifiers) =>
      _$this._classifiers = classifiers;

  ClassifiersBuilder() {
    Classifiers._initializeBuilder(this);
  }

  ClassifiersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _classifiers = $v.classifiers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Classifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Classifiers;
  }

  @override
  void update(void Function(ClassifiersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Classifiers build() {
    _$Classifiers _$result;
    try {
      _$result = _$v ?? new _$Classifiers._(classifiers: classifiers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'classifiers';
        classifiers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Classifiers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
