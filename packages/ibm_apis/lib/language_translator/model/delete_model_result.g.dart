// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_model_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteModelResult extends DeleteModelResult {
  @override
  final String status;

  factory _$DeleteModelResult(
          [void Function(DeleteModelResultBuilder)? updates]) =>
      (new DeleteModelResultBuilder()..update(updates)).build();

  _$DeleteModelResult._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, 'DeleteModelResult', 'status');
  }

  @override
  DeleteModelResult rebuild(void Function(DeleteModelResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteModelResultBuilder toBuilder() =>
      new DeleteModelResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteModelResult && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteModelResult')
          ..add('status', status))
        .toString();
  }
}

class DeleteModelResultBuilder
    implements Builder<DeleteModelResult, DeleteModelResultBuilder> {
  _$DeleteModelResult? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DeleteModelResultBuilder() {
    DeleteModelResult._initializeBuilder(this);
  }

  DeleteModelResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteModelResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteModelResult;
  }

  @override
  void update(void Function(DeleteModelResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteModelResult build() {
    final _$result = _$v ??
        new _$DeleteModelResult._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'DeleteModelResult', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
