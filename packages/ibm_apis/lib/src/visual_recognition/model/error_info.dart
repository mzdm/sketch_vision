//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_info.g.dart';

/// Information about what might have caused a failure, such as an image that is too large. Not returned when there is no error.
///
/// Properties:
/// * [code] - HTTP status code
/// * [description] - Human-readable error description. For example, `File size limit exceeded`.
/// * [errorId] - Codified error string. For example, `limit_exceeded`.
abstract class ErrorInfo implements Built<ErrorInfo, ErrorInfoBuilder> {
    /// HTTP status code
    @BuiltValueField(wireName: r'code')
    int get code;

    /// Human-readable error description. For example, `File size limit exceeded`.
    @BuiltValueField(wireName: r'description')
    String get description;

    /// Codified error string. For example, `limit_exceeded`.
    @BuiltValueField(wireName: r'error_id')
    String get errorId;

    ErrorInfo._();

    static void _initializeBuilder(ErrorInfoBuilder b) => b;

    factory ErrorInfo([void updates(ErrorInfoBuilder b)]) = _$ErrorInfo;

    @BuiltValueSerializer(custom: true)
    static Serializer<ErrorInfo> get serializer => _$ErrorInfoSerializer();
}

class _$ErrorInfoSerializer implements StructuredSerializer<ErrorInfo> {
    @override
    final Iterable<Type> types = const [ErrorInfo, _$ErrorInfo];

    @override
    final String wireName = r'ErrorInfo';

    @override
    Iterable<Object?> serialize(Serializers serializers, ErrorInfo object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'code')
            ..add(serializers.serialize(object.code,
                specifiedType: const FullType(int)));
        result
            ..add(r'description')
            ..add(serializers.serialize(object.description,
                specifiedType: const FullType(String)));
        result
            ..add(r'error_id')
            ..add(serializers.serialize(object.errorId,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    ErrorInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ErrorInfoBuilder();

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
                case r'description':
                    result.description = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'error_id':
                    result.errorId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

