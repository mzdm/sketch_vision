//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model_class.g.dart';



abstract class ModelClass implements Built<ModelClass, ModelClassBuilder> {
    /// The name of the class.
    @BuiltValueField(wireName: r'class')
    String get class_;

    ModelClass._();

    static void _initializeBuilder(ModelClassBuilder b) => b;

    factory ModelClass([void updates(ModelClassBuilder b)]) = _$ModelClass;

    @BuiltValueSerializer(custom: true)
    static Serializer<ModelClass> get serializer => _$ModelClassSerializer();
}

class _$ModelClassSerializer implements StructuredSerializer<ModelClass> {
    @override
    final Iterable<Type> types = const [ModelClass, _$ModelClass];

    @override
    final String wireName = r'ModelClass';

    @override
    Iterable<Object?> serialize(Serializers serializers, ModelClass object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'class')
            ..add(serializers.serialize(object.class_,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    ModelClass deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ModelClassBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'class':
                    result.class_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

