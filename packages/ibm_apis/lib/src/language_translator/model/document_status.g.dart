// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentStatus extends DocumentStatus {
  @override
  final String documentId;
  @override
  final String filename;
  @override
  final TranslationStatus status;
  @override
  final String modelId;
  @override
  final String? baseModelId;
  @override
  final String source_;
  @override
  final double? detectedLanguageConfidence;
  @override
  final String target;
  @override
  final DateTime created;
  @override
  final DateTime? completed;
  @override
  final int? wordCount;
  @override
  final int? characterCount;

  factory _$DocumentStatus([void Function(DocumentStatusBuilder)? updates]) =>
      (new DocumentStatusBuilder()..update(updates)).build();

  _$DocumentStatus._(
      {required this.documentId,
      required this.filename,
      required this.status,
      required this.modelId,
      this.baseModelId,
      required this.source_,
      this.detectedLanguageConfidence,
      required this.target,
      required this.created,
      this.completed,
      this.wordCount,
      this.characterCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        documentId, 'DocumentStatus', 'documentId');
    BuiltValueNullFieldError.checkNotNull(
        filename, 'DocumentStatus', 'filename');
    BuiltValueNullFieldError.checkNotNull(status, 'DocumentStatus', 'status');
    BuiltValueNullFieldError.checkNotNull(modelId, 'DocumentStatus', 'modelId');
    BuiltValueNullFieldError.checkNotNull(source_, 'DocumentStatus', 'source_');
    BuiltValueNullFieldError.checkNotNull(target, 'DocumentStatus', 'target');
    BuiltValueNullFieldError.checkNotNull(created, 'DocumentStatus', 'created');
  }

  @override
  DocumentStatus rebuild(void Function(DocumentStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentStatusBuilder toBuilder() =>
      new DocumentStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentStatus &&
        documentId == other.documentId &&
        filename == other.filename &&
        status == other.status &&
        modelId == other.modelId &&
        baseModelId == other.baseModelId &&
        source_ == other.source_ &&
        detectedLanguageConfidence == other.detectedLanguageConfidence &&
        target == other.target &&
        created == other.created &&
        completed == other.completed &&
        wordCount == other.wordCount &&
        characterCount == other.characterCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, documentId.hashCode),
                                                filename.hashCode),
                                            status.hashCode),
                                        modelId.hashCode),
                                    baseModelId.hashCode),
                                source_.hashCode),
                            detectedLanguageConfidence.hashCode),
                        target.hashCode),
                    created.hashCode),
                completed.hashCode),
            wordCount.hashCode),
        characterCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DocumentStatus')
          ..add('documentId', documentId)
          ..add('filename', filename)
          ..add('status', status)
          ..add('modelId', modelId)
          ..add('baseModelId', baseModelId)
          ..add('source_', source_)
          ..add('detectedLanguageConfidence', detectedLanguageConfidence)
          ..add('target', target)
          ..add('created', created)
          ..add('completed', completed)
          ..add('wordCount', wordCount)
          ..add('characterCount', characterCount))
        .toString();
  }
}

class DocumentStatusBuilder
    implements Builder<DocumentStatus, DocumentStatusBuilder> {
  _$DocumentStatus? _$v;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(String? documentId) => _$this._documentId = documentId;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  TranslationStatus? _status;
  TranslationStatus? get status => _$this._status;
  set status(TranslationStatus? status) => _$this._status = status;

  String? _modelId;
  String? get modelId => _$this._modelId;
  set modelId(String? modelId) => _$this._modelId = modelId;

  String? _baseModelId;
  String? get baseModelId => _$this._baseModelId;
  set baseModelId(String? baseModelId) => _$this._baseModelId = baseModelId;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  double? _detectedLanguageConfidence;
  double? get detectedLanguageConfidence => _$this._detectedLanguageConfidence;
  set detectedLanguageConfidence(double? detectedLanguageConfidence) =>
      _$this._detectedLanguageConfidence = detectedLanguageConfidence;

  String? _target;
  String? get target => _$this._target;
  set target(String? target) => _$this._target = target;

  DateTime? _created;
  DateTime? get created => _$this._created;
  set created(DateTime? created) => _$this._created = created;

  DateTime? _completed;
  DateTime? get completed => _$this._completed;
  set completed(DateTime? completed) => _$this._completed = completed;

  int? _wordCount;
  int? get wordCount => _$this._wordCount;
  set wordCount(int? wordCount) => _$this._wordCount = wordCount;

  int? _characterCount;
  int? get characterCount => _$this._characterCount;
  set characterCount(int? characterCount) =>
      _$this._characterCount = characterCount;

  DocumentStatusBuilder() {
    DocumentStatus._initializeBuilder(this);
  }

  DocumentStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentId = $v.documentId;
      _filename = $v.filename;
      _status = $v.status;
      _modelId = $v.modelId;
      _baseModelId = $v.baseModelId;
      _source_ = $v.source_;
      _detectedLanguageConfidence = $v.detectedLanguageConfidence;
      _target = $v.target;
      _created = $v.created;
      _completed = $v.completed;
      _wordCount = $v.wordCount;
      _characterCount = $v.characterCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentStatus;
  }

  @override
  void update(void Function(DocumentStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DocumentStatus build() {
    final _$result = _$v ??
        new _$DocumentStatus._(
            documentId: BuiltValueNullFieldError.checkNotNull(
                documentId, 'DocumentStatus', 'documentId'),
            filename: BuiltValueNullFieldError.checkNotNull(
                filename, 'DocumentStatus', 'filename'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'DocumentStatus', 'status'),
            modelId: BuiltValueNullFieldError.checkNotNull(
                modelId, 'DocumentStatus', 'modelId'),
            baseModelId: baseModelId,
            source_: BuiltValueNullFieldError.checkNotNull(
                source_, 'DocumentStatus', 'source_'),
            detectedLanguageConfidence: detectedLanguageConfidence,
            target: BuiltValueNullFieldError.checkNotNull(
                target, 'DocumentStatus', 'target'),
            created: BuiltValueNullFieldError.checkNotNull(
                created, 'DocumentStatus', 'created'),
            completed: completed,
            wordCount: wordCount,
            characterCount: characterCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
