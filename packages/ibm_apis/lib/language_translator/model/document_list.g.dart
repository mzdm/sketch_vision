// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentList extends DocumentList {
  @override
  final BuiltList<DocumentStatus> documents;

  factory _$DocumentList([void Function(DocumentListBuilder)? updates]) =>
      (new DocumentListBuilder()..update(updates)).build();

  _$DocumentList._({required this.documents}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        documents, 'DocumentList', 'documents');
  }

  @override
  DocumentList rebuild(void Function(DocumentListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentListBuilder toBuilder() => new DocumentListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentList && documents == other.documents;
  }

  @override
  int get hashCode {
    return $jf($jc(0, documents.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DocumentList')
          ..add('documents', documents))
        .toString();
  }
}

class DocumentListBuilder
    implements Builder<DocumentList, DocumentListBuilder> {
  _$DocumentList? _$v;

  ListBuilder<DocumentStatus>? _documents;
  ListBuilder<DocumentStatus> get documents =>
      _$this._documents ??= new ListBuilder<DocumentStatus>();
  set documents(ListBuilder<DocumentStatus>? documents) =>
      _$this._documents = documents;

  DocumentListBuilder() {
    DocumentList._initializeBuilder(this);
  }

  DocumentListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documents = $v.documents.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentList;
  }

  @override
  void update(void Function(DocumentListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DocumentList build() {
    _$DocumentList _$result;
    try {
      _$result = _$v ?? new _$DocumentList._(documents: documents.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'documents';
        documents.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DocumentList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
