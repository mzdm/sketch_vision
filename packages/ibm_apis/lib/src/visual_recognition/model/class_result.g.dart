// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClassResult extends ClassResult {
  @override
  final String class_;
  @override
  final double score;
  @override
  final String? typeHierarchy;

  factory _$ClassResult([void Function(ClassResultBuilder)? updates]) =>
      (new ClassResultBuilder()..update(updates)).build();

  _$ClassResult._(
      {required this.class_, required this.score, this.typeHierarchy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(class_, 'ClassResult', 'class_');
    BuiltValueNullFieldError.checkNotNull(score, 'ClassResult', 'score');
  }

  @override
  ClassResult rebuild(void Function(ClassResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassResultBuilder toBuilder() => new ClassResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassResult &&
        class_ == other.class_ &&
        score == other.score &&
        typeHierarchy == other.typeHierarchy;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, class_.hashCode), score.hashCode), typeHierarchy.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClassResult')
          ..add('class_', class_)
          ..add('score', score)
          ..add('typeHierarchy', typeHierarchy))
        .toString();
  }
}

class ClassResultBuilder implements Builder<ClassResult, ClassResultBuilder> {
  _$ClassResult? _$v;

  String? _class_;
  String? get class_ => _$this._class_;
  set class_(String? class_) => _$this._class_ = class_;

  double? _score;
  double? get score => _$this._score;
  set score(double? score) => _$this._score = score;

  String? _typeHierarchy;
  String? get typeHierarchy => _$this._typeHierarchy;
  set typeHierarchy(String? typeHierarchy) =>
      _$this._typeHierarchy = typeHierarchy;

  ClassResultBuilder() {
    ClassResult._initializeBuilder(this);
  }

  ClassResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _class_ = $v.class_;
      _score = $v.score;
      _typeHierarchy = $v.typeHierarchy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClassResult;
  }

  @override
  void update(void Function(ClassResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClassResult build() {
    final _$result = _$v ??
        new _$ClassResult._(
            class_: BuiltValueNullFieldError.checkNotNull(
                class_, 'ClassResult', 'class_'),
            score: BuiltValueNullFieldError.checkNotNull(
                score, 'ClassResult', 'score'),
            typeHierarchy: typeHierarchy);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
