//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_response.g.dart';

/// Error information.
///
/// Properties:
/// * [code] - HTTP error code.
/// * [error] - Human-readable error string, like 'Invalid image file'.
abstract class ErrorResponse implements Built<ErrorResponse, ErrorResponseBuilder> {
    /// HTTP error code.
    @BuiltValueField(wireName: r'code')
    int get code;

    /// Human-readable error string, like 'Invalid image file'.
    @BuiltValueField(wireName: r'error')
    String get error;

    ErrorResponse._();

    static void _initializeBuilder(ErrorResponseBuilder b) => b;

    factory ErrorResponse([void updates(ErrorResponseBuilder b)]) = _$ErrorResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<ErrorResponse> get serializer => _$ErrorResponseSerializer();
}

class _$ErrorResponseSerializer implements StructuredSerializer<ErrorResponse> {
    @override
    final Iterable<Type> types = const [ErrorResponse, _$ErrorResponse];

    @override
    final String wireName = r'ErrorResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, ErrorResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'code')
            ..add(serializers.serialize(object.code,
                specifiedType: const FullType(int)));
        result
            ..add(r'error')
            ..add(serializers.serialize(object.error,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    ErrorResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ErrorResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'code':
                    result.code = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'error':
                    result.error = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

