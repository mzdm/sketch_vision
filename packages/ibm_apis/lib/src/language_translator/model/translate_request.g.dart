// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TranslateRequest extends TranslateRequest {
  @override
  final BuiltList<String> text;
  @override
  final String? modelId;
  @override
  final String? source_;
  @override
  final String? target;

  factory _$TranslateRequest(
          [void Function(TranslateRequestBuilder)? updates]) =>
      (new TranslateRequestBuilder()..update(updates)).build();

  _$TranslateRequest._(
      {required this.text, this.modelId, this.source_, this.target})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(text, 'TranslateRequest', 'text');
  }

  @override
  TranslateRequest rebuild(void Function(TranslateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslateRequestBuilder toBuilder() =>
      new TranslateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslateRequest &&
        text == other.text &&
        modelId == other.modelId &&
        source_ == other.source_ &&
        target == other.target;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, text.hashCode), modelId.hashCode), source_.hashCode),
        target.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TranslateRequest')
          ..add('text', text)
          ..add('modelId', modelId)
          ..add('source_', source_)
          ..add('target', target))
        .toString();
  }
}

class TranslateRequestBuilder
    implements Builder<TranslateRequest, TranslateRequestBuilder> {
  _$TranslateRequest? _$v;

  ListBuilder<String>? _text;
  ListBuilder<String> get text => _$this._text ??= new ListBuilder<String>();
  set text(ListBuilder<String>? text) => _$this._text = text;

  String? _modelId;
  String? get modelId => _$this._modelId;
  set modelId(String? modelId) => _$this._modelId = modelId;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _target;
  String? get target => _$this._target;
  set target(String? target) => _$this._target = target;

  TranslateRequestBuilder() {
    TranslateRequest._initializeBuilder(this);
  }

  TranslateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text.toBuilder();
      _modelId = $v.modelId;
      _source_ = $v.source_;
      _target = $v.target;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TranslateRequest;
  }

  @override
  void update(void Function(TranslateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TranslateRequest build() {
    _$TranslateRequest _$result;
    try {
      _$result = _$v ??
          new _$TranslateRequest._(
              text: text.build(),
              modelId: modelId,
              source_: source_,
              target: target);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'text';
        text.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TranslateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
