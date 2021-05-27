//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_model_result.g.dart';

/// DeleteModelResult
///
/// Properties:
/// * [status] - \"OK\" indicates that the model was successfully deleted.
abstract class DeleteModelResult implements Built<DeleteModelResult, DeleteModelResultBuilder> {
    /// \"OK\" indicates that the model was successfully deleted.
    @BuiltValueField(wireName: r'status')
    String get status;

    DeleteModelResult._();

    static void _initializeBuilder(DeleteModelResultBuilder b) => b;

    factory DeleteModelResult([void updates(DeleteModelResultBuilder b)]) = _$DeleteModelResult;

    @BuiltValueSerializer(custom: true)
    static Serializer<DeleteModelResult> get serializer => _$DeleteModelResultSerializer();
}

class _$DeleteModelResultSerializer implements StructuredSerializer<DeleteModelResult> {
    @override
    final Iterable<Type> types = const [DeleteModelResult, _$DeleteModelResult];

    @override
    final String wireName = r'DeleteModelResult';

    @override
    Iterable<Object?> serialize(Serializers serializers, DeleteModelResult object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'status')
            ..add(serializers.serialize(object.status,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    DeleteModelResult deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DeleteModelResultBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'status':
                    result.status = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

