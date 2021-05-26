// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classified_images.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClassifiedImages extends ClassifiedImages {
  @override
  final int? customClasses;
  @override
  final int? imagesProcessed;
  @override
  final BuiltList<ClassifiedImage> images;
  @override
  final BuiltList<WarningInfo>? warnings;

  factory _$ClassifiedImages(
          [void Function(ClassifiedImagesBuilder)? updates]) =>
      (new ClassifiedImagesBuilder()..update(updates)).build();

  _$ClassifiedImages._(
      {this.customClasses,
      this.imagesProcessed,
      required this.images,
      this.warnings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(images, 'ClassifiedImages', 'images');
  }

  @override
  ClassifiedImages rebuild(void Function(ClassifiedImagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassifiedImagesBuilder toBuilder() =>
      new ClassifiedImagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassifiedImages &&
        customClasses == other.customClasses &&
        imagesProcessed == other.imagesProcessed &&
        images == other.images &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, customClasses.hashCode), imagesProcessed.hashCode),
            images.hashCode),
        warnings.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClassifiedImages')
          ..add('customClasses', customClasses)
          ..add('imagesProcessed', imagesProcessed)
          ..add('images', images)
          ..add('warnings', warnings))
        .toString();
  }
}

class ClassifiedImagesBuilder
    implements Builder<ClassifiedImages, ClassifiedImagesBuilder> {
  _$ClassifiedImages? _$v;

  int? _customClasses;
  int? get customClasses => _$this._customClasses;
  set customClasses(int? customClasses) =>
      _$this._customClasses = customClasses;

  int? _imagesProcessed;
  int? get imagesProcessed => _$this._imagesProcessed;
  set imagesProcessed(int? imagesProcessed) =>
      _$this._imagesProcessed = imagesProcessed;

  ListBuilder<ClassifiedImage>? _images;
  ListBuilder<ClassifiedImage> get images =>
      _$this._images ??= new ListBuilder<ClassifiedImage>();
  set images(ListBuilder<ClassifiedImage>? images) => _$this._images = images;

  ListBuilder<WarningInfo>? _warnings;
  ListBuilder<WarningInfo> get warnings =>
      _$this._warnings ??= new ListBuilder<WarningInfo>();
  set warnings(ListBuilder<WarningInfo>? warnings) =>
      _$this._warnings = warnings;

  ClassifiedImagesBuilder() {
    ClassifiedImages._initializeBuilder(this);
  }

  ClassifiedImagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customClasses = $v.customClasses;
      _imagesProcessed = $v.imagesProcessed;
      _images = $v.images.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassifiedImages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClassifiedImages;
  }

  @override
  void update(void Function(ClassifiedImagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClassifiedImages build() {
    _$ClassifiedImages _$result;
    try {
      _$result = _$v ??
          new _$ClassifiedImages._(
              customClasses: customClasses,
              imagesProcessed: imagesProcessed,
              images: images.build(),
              warnings: _warnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        images.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ClassifiedImages', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
