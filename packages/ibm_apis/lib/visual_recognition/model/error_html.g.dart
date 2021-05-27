// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_html.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorHTML extends ErrorHTML {
  @override
  final String? error;

  factory _$ErrorHTML([void Function(ErrorHTMLBuilder)? updates]) =>
      (new ErrorHTMLBuilder()..update(updates)).build();

  _$ErrorHTML._({this.error}) : super._();

  @override
  ErrorHTML rebuild(void Function(ErrorHTMLBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorHTMLBuilder toBuilder() => new ErrorHTMLBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorHTML && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorHTML')..add('error', error))
        .toString();
  }
}

class ErrorHTMLBuilder implements Builder<ErrorHTML, ErrorHTMLBuilder> {
  _$ErrorHTML? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ErrorHTMLBuilder() {
    ErrorHTML._initializeBuilder(this);
  }

  ErrorHTMLBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorHTML other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorHTML;
  }

  @override
  void update(void Function(ErrorHTMLBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorHTML build() {
    final _$result = _$v ?? new _$ErrorHTML._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
