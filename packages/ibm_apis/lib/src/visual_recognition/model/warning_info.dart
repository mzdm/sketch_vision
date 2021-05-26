//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'warning_info.g.dart';



abstract class WarningInfo implements Built<WarningInfo, WarningInfoBuilder> {
    /// Codified warning string, such as `limit_reached`.
    @BuiltValueField(wireName: r'warning_id')
    String get warningId;

    /// Information about the error.
    @BuiltValueField(wireName: r'description')
    String get description;

    WarningInfo._();

    static void _initializeBuilder(WarningInfoBuilder b) => b;

    factory WarningInfo([void updates(WarningInfoBuilder b)]) = _$WarningInfo;

    @BuiltValueSerializer(custom: true)
    static Serializer<WarningInfo> get serializer => _$WarningInfoSerializer();
}

class _$WarningInfoSerializer implements StructuredSerializer<WarningInfo> {
    @override
    final Iterable<Type> types = const [WarningInfo, _$WarningInfo];

    @override
    final String wireName = r'WarningInfo';

    @override
    Iterable<Object?> serialize(Serializers serializers, WarningInfo object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'warning_id')
            ..add(serializers.serialize(object.warningId,
                specifiedType: const FullType(String)));
        result
            ..add(r'description')
            ..add(serializers.serialize(object.description,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    WarningInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = WarningInfoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'warning_id':
                    result.warningId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'description':
                    result.description = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

