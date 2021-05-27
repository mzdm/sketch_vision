//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_html.g.dart';

/// Error information.
///
/// Properties:
/// * [error] - HTML description of the error.
abstract class ErrorHTML implements Built<ErrorHTML, ErrorHTMLBuilder> {
    /// HTML description of the error.
    @BuiltValueField(wireName: r'Error')
    String? get error;

    ErrorHTML._();

    static void _initializeBuilder(ErrorHTMLBuilder b) => b;

    factory ErrorHTML([void updates(ErrorHTMLBuilder b)]) = _$ErrorHTML;

    @BuiltValueSerializer(custom: true)
    static Serializer<ErrorHTML> get serializer => _$ErrorHTMLSerializer();
}

class _$ErrorHTMLSerializer implements StructuredSerializer<ErrorHTML> {
    @override
    final Iterable<Type> types = const [ErrorHTML, _$ErrorHTML];

    @override
    final String wireName = r'ErrorHTML';

    @override
    Iterable<Object?> serialize(Serializers serializers, ErrorHTML object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.error != null) {
            result
                ..add(r'Error')
                ..add(serializers.serialize(object.error,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ErrorHTML deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ErrorHTMLBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'Error':
                    result.error = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

