// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorInfo extends ErrorInfo {
  @override
  final int code;
  @override
  final String description;
  @override
  final String errorId;

  factory _$ErrorInfo([void Function(ErrorInfoBuilder)? updates]) =>
      (new ErrorInfoBuilder()..update(updates)).build();

  _$ErrorInfo._(
      {required this.code, required this.description, required this.errorId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(code, 'ErrorInfo', 'code');
    BuiltValueNullFieldError.checkNotNull(
        description, 'ErrorInfo', 'description');
    BuiltValueNullFieldError.checkNotNull(errorId, 'ErrorInfo', 'errorId');
  }

  @override
  ErrorInfo rebuild(void Function(ErrorInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorInfoBuilder toBuilder() => new ErrorInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorInfo &&
        code == other.code &&
        description == other.description &&
        errorId == other.errorId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, code.hashCode), description.hashCode), errorId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorInfo')
          ..add('code', code)
          ..add('description', description)
          ..add('errorId', errorId))
        .toString();
  }
}

class ErrorInfoBuilder implements Builder<ErrorInfo, ErrorInfoBuilder> {
  _$ErrorInfo? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _errorId;
  String? get errorId => _$this._errorId;
  set errorId(String? errorId) => _$this._errorId = errorId;

  ErrorInfoBuilder() {
    ErrorInfo._initializeBuilder(this);
  }

  ErrorInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _description = $v.description;
      _errorId = $v.errorId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorInfo;
  }

  @override
  void update(void Function(ErrorInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorInfo build() {
    final _$result = _$v ??
        new _$ErrorInfo._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, 'ErrorInfo', 'code'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'ErrorInfo', 'description'),
            errorId: BuiltValueNullFieldError.checkNotNull(
                errorId, 'ErrorInfo', 'errorId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
