// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classifier.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClassifierStatusEnum _$classifierStatusEnum_ready =
    const ClassifierStatusEnum._('ready');
const ClassifierStatusEnum _$classifierStatusEnum_training =
    const ClassifierStatusEnum._('training');
const ClassifierStatusEnum _$classifierStatusEnum_retraining =
    const ClassifierStatusEnum._('retraining');
const ClassifierStatusEnum _$classifierStatusEnum_failed =
    const ClassifierStatusEnum._('failed');

ClassifierStatusEnum _$classifierStatusEnumValueOf(String name) {
  switch (name) {
    case 'ready':
      return _$classifierStatusEnum_ready;
    case 'training':
      return _$classifierStatusEnum_training;
    case 'retraining':
      return _$classifierStatusEnum_retraining;
    case 'failed':
      return _$classifierStatusEnum_failed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ClassifierStatusEnum> _$classifierStatusEnumValues =
    new BuiltSet<ClassifierStatusEnum>(const <ClassifierStatusEnum>[
  _$classifierStatusEnum_ready,
  _$classifierStatusEnum_training,
  _$classifierStatusEnum_retraining,
  _$classifierStatusEnum_failed,
]);

Serializer<ClassifierStatusEnum> _$classifierStatusEnumSerializer =
    new _$ClassifierStatusEnumSerializer();

class _$ClassifierStatusEnumSerializer
    implements PrimitiveSerializer<ClassifierStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ready': 'ready',
    'training': 'training',
    'retraining': 'retraining',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ready': 'ready',
    'training': 'training',
    'retraining': 'retraining',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[ClassifierStatusEnum];
  @override
  final String wireName = 'ClassifierStatusEnum';

  @override
  Object serialize(Serializers serializers, ClassifierStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClassifierStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClassifierStatusEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$Classifier extends Classifier {
  @override
  final String classifierId;
  @override
  final String name;
  @override
  final String? owner;
  @override
  final ClassifierStatusEnum? status;
  @override
  final bool? coreMlEnabled;
  @override
  final String? explanation;
  @override
  final DateTime? created;
  @override
  final BuiltList<ModelClass>? classes;
  @override
  final DateTime? retrained;
  @override
  final DateTime? updated;

  factory _$Classifier([void Function(ClassifierBuilder)? updates]) =>
      (new ClassifierBuilder()..update(updates)).build();

  _$Classifier._(
      {required this.classifierId,
      required this.name,
      this.owner,
      this.status,
      this.coreMlEnabled,
      this.explanation,
      this.created,
      this.classes,
      this.retrained,
      this.updated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        classifierId, 'Classifier', 'classifierId');
    BuiltValueNullFieldError.checkNotNull(name, 'Classifier', 'name');
  }

  @override
  Classifier rebuild(void Function(ClassifierBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassifierBuilder toBuilder() => new ClassifierBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Classifier &&
        classifierId == other.classifierId &&
        name == other.name &&
        owner == other.owner &&
        status == other.status &&
        coreMlEnabled == other.coreMlEnabled &&
        explanation == other.explanation &&
        created == other.created &&
        classes == other.classes &&
        retrained == other.retrained &&
        updated == other.updated;
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
                                    $jc($jc(0, classifierId.hashCode),
                                        name.hashCode),
                                    owner.hashCode),
                                status.hashCode),
                            coreMlEnabled.hashCode),
                        explanation.hashCode),
                    created.hashCode),
                classes.hashCode),
            retrained.hashCode),
        updated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Classifier')
          ..add('classifierId', classifierId)
          ..add('name', name)
          ..add('owner', owner)
          ..add('status', status)
          ..add('coreMlEnabled', coreMlEnabled)
          ..add('explanation', explanation)
          ..add('created', created)
          ..add('classes', classes)
          ..add('retrained', retrained)
          ..add('updated', updated))
        .toString();
  }
}

class ClassifierBuilder implements Builder<Classifier, ClassifierBuilder> {
  _$Classifier? _$v;

  String? _classifierId;
  String? get classifierId => _$this._classifierId;
  set classifierId(String? classifierId) => _$this._classifierId = classifierId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  ClassifierStatusEnum? _status;
  ClassifierStatusEnum? get status => _$this._status;
  set status(ClassifierStatusEnum? status) => _$this._status = status;

  bool? _coreMlEnabled;
  bool? get coreMlEnabled => _$this._coreMlEnabled;
  set coreMlEnabled(bool? coreMlEnabled) =>
      _$this._coreMlEnabled = coreMlEnabled;

  String? _explanation;
  String? get explanation => _$this._explanation;
  set explanation(String? explanation) => _$this._explanation = explanation;

  DateTime? _created;
  DateTime? get created => _$this._created;
  set created(DateTime? created) => _$this._created = created;

  ListBuilder<ModelClass>? _classes;
  ListBuilder<ModelClass> get classes =>
      _$this._classes ??= new ListBuilder<ModelClass>();
  set classes(ListBuilder<ModelClass>? classes) => _$this._classes = classes;

  DateTime? _retrained;
  DateTime? get retrained => _$this._retrained;
  set retrained(DateTime? retrained) => _$this._retrained = retrained;

  DateTime? _updated;
  DateTime? get updated => _$this._updated;
  set updated(DateTime? updated) => _$this._updated = updated;

  ClassifierBuilder() {
    Classifier._initializeBuilder(this);
  }

  ClassifierBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _classifierId = $v.classifierId;
      _name = $v.name;
      _owner = $v.owner;
      _status = $v.status;
      _coreMlEnabled = $v.coreMlEnabled;
      _explanation = $v.explanation;
      _created = $v.created;
      _classes = $v.classes?.toBuilder();
      _retrained = $v.retrained;
      _updated = $v.updated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Classifier other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Classifier;
  }

  @override
  void update(void Function(ClassifierBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Classifier build() {
    _$Classifier _$result;
    try {
      _$result = _$v ??
          new _$Classifier._(
              classifierId: BuiltValueNullFieldError.checkNotNull(
                  classifierId, 'Classifier', 'classifierId'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Classifier', 'name'),
              owner: owner,
              status: status,
              coreMlEnabled: coreMlEnabled,
              explanation: explanation,
              created: created,
              classes: _classes?.build(),
              retrained: retrained,
              updated: updated);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'classes';
        _classes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Classifier', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
