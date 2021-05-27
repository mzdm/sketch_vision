// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classified_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClassifiedImage extends ClassifiedImage {
  @override
  final String? sourceUrl;
  @override
  final String? resolvedUrl;
  @override
  final String? image;
  @override
  final ErrorInfo? error;
  @override
  final BuiltList<ClassifierResult> classifiers;

  factory _$ClassifiedImage([void Function(ClassifiedImageBuilder)? updates]) =>
      (new ClassifiedImageBuilder()..update(updates)).build();

  _$ClassifiedImage._(
      {this.sourceUrl,
      this.resolvedUrl,
      this.image,
      this.error,
      required this.classifiers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        classifiers, 'ClassifiedImage', 'classifiers');
  }

  @override
  ClassifiedImage rebuild(void Function(ClassifiedImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassifiedImageBuilder toBuilder() =>
      new ClassifiedImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassifiedImage &&
        sourceUrl == other.sourceUrl &&
        resolvedUrl == other.resolvedUrl &&
        image == other.image &&
        error == other.error &&
        classifiers == other.classifiers;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, sourceUrl.hashCode), resolvedUrl.hashCode),
                image.hashCode),
            error.hashCode),
        classifiers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClassifiedImage')
          ..add('sourceUrl', sourceUrl)
          ..add('resolvedUrl', resolvedUrl)
          ..add('image', image)
          ..add('error', error)
          ..add('classifiers', classifiers))
        .toString();
  }
}

class ClassifiedImageBuilder
    implements Builder<ClassifiedImage, ClassifiedImageBuilder> {
  _$ClassifiedImage? _$v;

  String? _sourceUrl;
  String? get sourceUrl => _$this._sourceUrl;
  set sourceUrl(String? sourceUrl) => _$this._sourceUrl = sourceUrl;

  String? _resolvedUrl;
  String? get resolvedUrl => _$this._resolvedUrl;
  set resolvedUrl(String? resolvedUrl) => _$this._resolvedUrl = resolvedUrl;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ErrorInfoBuilder? _error;
  ErrorInfoBuilder get error => _$this._error ??= new ErrorInfoBuilder();
  set error(ErrorInfoBuilder? error) => _$this._error = error;

  ListBuilder<ClassifierResult>? _classifiers;
  ListBuilder<ClassifierResult> get classifiers =>
      _$this._classifiers ??= new ListBuilder<ClassifierResult>();
  set classifiers(ListBuilder<ClassifierResult>? classifiers) =>
      _$this._classifiers = classifiers;

  ClassifiedImageBuilder() {
    ClassifiedImage._initializeBuilder(this);
  }

  ClassifiedImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceUrl = $v.sourceUrl;
      _resolvedUrl = $v.resolvedUrl;
      _image = $v.image;
      _error = $v.error?.toBuilder();
      _classifiers = $v.classifiers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassifiedImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClassifiedImage;
  }

  @override
  void update(void Function(ClassifiedImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClassifiedImage build() {
    _$ClassifiedImage _$result;
    try {
      _$result = _$v ??
          new _$ClassifiedImage._(
              sourceUrl: sourceUrl,
              resolvedUrl: resolvedUrl,
              image: image,
              error: _error?.build(),
              classifiers: classifiers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
        _$failedField = 'classifiers';
        classifiers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ClassifiedImage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
