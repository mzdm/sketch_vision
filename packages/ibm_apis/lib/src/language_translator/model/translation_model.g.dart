// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TranslationModelStatusEnum _$translationModelStatusEnum_uploading =
    const TranslationModelStatusEnum._('uploading');
const TranslationModelStatusEnum _$translationModelStatusEnum_uploaded =
    const TranslationModelStatusEnum._('uploaded');
const TranslationModelStatusEnum _$translationModelStatusEnum_dispatching =
    const TranslationModelStatusEnum._('dispatching');
const TranslationModelStatusEnum _$translationModelStatusEnum_queued =
    const TranslationModelStatusEnum._('queued');
const TranslationModelStatusEnum _$translationModelStatusEnum_training =
    const TranslationModelStatusEnum._('training');
const TranslationModelStatusEnum _$translationModelStatusEnum_trained =
    const TranslationModelStatusEnum._('trained');
const TranslationModelStatusEnum _$translationModelStatusEnum_publishing =
    const TranslationModelStatusEnum._('publishing');
const TranslationModelStatusEnum _$translationModelStatusEnum_available =
    const TranslationModelStatusEnum._('available');
const TranslationModelStatusEnum _$translationModelStatusEnum_deleted =
    const TranslationModelStatusEnum._('deleted');
const TranslationModelStatusEnum _$translationModelStatusEnum_error =
    const TranslationModelStatusEnum._('error');

TranslationModelStatusEnum _$translationModelStatusEnumValueOf(String name) {
  switch (name) {
    case 'uploading':
      return _$translationModelStatusEnum_uploading;
    case 'uploaded':
      return _$translationModelStatusEnum_uploaded;
    case 'dispatching':
      return _$translationModelStatusEnum_dispatching;
    case 'queued':
      return _$translationModelStatusEnum_queued;
    case 'training':
      return _$translationModelStatusEnum_training;
    case 'trained':
      return _$translationModelStatusEnum_trained;
    case 'publishing':
      return _$translationModelStatusEnum_publishing;
    case 'available':
      return _$translationModelStatusEnum_available;
    case 'deleted':
      return _$translationModelStatusEnum_deleted;
    case 'error':
      return _$translationModelStatusEnum_error;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TranslationModelStatusEnum> _$translationModelStatusEnumValues =
    new BuiltSet<TranslationModelStatusEnum>(const <TranslationModelStatusEnum>[
  _$translationModelStatusEnum_uploading,
  _$translationModelStatusEnum_uploaded,
  _$translationModelStatusEnum_dispatching,
  _$translationModelStatusEnum_queued,
  _$translationModelStatusEnum_training,
  _$translationModelStatusEnum_trained,
  _$translationModelStatusEnum_publishing,
  _$translationModelStatusEnum_available,
  _$translationModelStatusEnum_deleted,
  _$translationModelStatusEnum_error,
]);

Serializer<TranslationModelStatusEnum> _$translationModelStatusEnumSerializer =
    new _$TranslationModelStatusEnumSerializer();

class _$TranslationModelStatusEnumSerializer
    implements PrimitiveSerializer<TranslationModelStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'uploading': 'uploading',
    'uploaded': 'uploaded',
    'dispatching': 'dispatching',
    'queued': 'queued',
    'training': 'training',
    'trained': 'trained',
    'publishing': 'publishing',
    'available': 'available',
    'deleted': 'deleted',
    'error': 'error',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'uploading': 'uploading',
    'uploaded': 'uploaded',
    'dispatching': 'dispatching',
    'queued': 'queued',
    'training': 'training',
    'trained': 'trained',
    'publishing': 'publishing',
    'available': 'available',
    'deleted': 'deleted',
    'error': 'error',
  };

  @override
  final Iterable<Type> types = const <Type>[TranslationModelStatusEnum];
  @override
  final String wireName = 'TranslationModelStatusEnum';

  @override
  Object serialize(Serializers serializers, TranslationModelStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TranslationModelStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TranslationModelStatusEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$TranslationModel extends TranslationModel {
  @override
  final String modelId;
  @override
  final String? name;
  @override
  final String? source_;
  @override
  final String? target;
  @override
  final String? baseModelId;
  @override
  final String? domain;
  @override
  final bool? customizable;
  @override
  final bool? defaultModel;
  @override
  final String? owner;
  @override
  final TranslationModelStatusEnum? status;

  factory _$TranslationModel(
          [void Function(TranslationModelBuilder)? updates]) =>
      (new TranslationModelBuilder()..update(updates)).build();

  _$TranslationModel._(
      {required this.modelId,
      this.name,
      this.source_,
      this.target,
      this.baseModelId,
      this.domain,
      this.customizable,
      this.defaultModel,
      this.owner,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        modelId, 'TranslationModel', 'modelId');
  }

  @override
  TranslationModel rebuild(void Function(TranslationModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationModelBuilder toBuilder() =>
      new TranslationModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslationModel &&
        modelId == other.modelId &&
        name == other.name &&
        source_ == other.source_ &&
        target == other.target &&
        baseModelId == other.baseModelId &&
        domain == other.domain &&
        customizable == other.customizable &&
        defaultModel == other.defaultModel &&
        owner == other.owner &&
        status == other.status;
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
                                    $jc($jc(0, modelId.hashCode),
                                        name.hashCode),
                                    source_.hashCode),
                                target.hashCode),
                            baseModelId.hashCode),
                        domain.hashCode),
                    customizable.hashCode),
                defaultModel.hashCode),
            owner.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TranslationModel')
          ..add('modelId', modelId)
          ..add('name', name)
          ..add('source_', source_)
          ..add('target', target)
          ..add('baseModelId', baseModelId)
          ..add('domain', domain)
          ..add('customizable', customizable)
          ..add('defaultModel', defaultModel)
          ..add('owner', owner)
          ..add('status', status))
        .toString();
  }
}

class TranslationModelBuilder
    implements Builder<TranslationModel, TranslationModelBuilder> {
  _$TranslationModel? _$v;

  String? _modelId;
  String? get modelId => _$this._modelId;
  set modelId(String? modelId) => _$this._modelId = modelId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _target;
  String? get target => _$this._target;
  set target(String? target) => _$this._target = target;

  String? _baseModelId;
  String? get baseModelId => _$this._baseModelId;
  set baseModelId(String? baseModelId) => _$this._baseModelId = baseModelId;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  bool? _customizable;
  bool? get customizable => _$this._customizable;
  set customizable(bool? customizable) => _$this._customizable = customizable;

  bool? _defaultModel;
  bool? get defaultModel => _$this._defaultModel;
  set defaultModel(bool? defaultModel) => _$this._defaultModel = defaultModel;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  TranslationModelStatusEnum? _status;
  TranslationModelStatusEnum? get status => _$this._status;
  set status(TranslationModelStatusEnum? status) => _$this._status = status;

  TranslationModelBuilder() {
    TranslationModel._initializeBuilder(this);
  }

  TranslationModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _modelId = $v.modelId;
      _name = $v.name;
      _source_ = $v.source_;
      _target = $v.target;
      _baseModelId = $v.baseModelId;
      _domain = $v.domain;
      _customizable = $v.customizable;
      _defaultModel = $v.defaultModel;
      _owner = $v.owner;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslationModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TranslationModel;
  }

  @override
  void update(void Function(TranslationModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TranslationModel build() {
    final _$result = _$v ??
        new _$TranslationModel._(
            modelId: BuiltValueNullFieldError.checkNotNull(
                modelId, 'TranslationModel', 'modelId'),
            name: name,
            source_: source_,
            target: target,
            baseModelId: baseModelId,
            domain: domain,
            customizable: customizable,
            defaultModel: defaultModel,
            owner: owner,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
