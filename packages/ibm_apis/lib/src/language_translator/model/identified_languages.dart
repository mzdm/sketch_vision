//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:ibm_apis/src/language_translator/model/identified_language.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identified_languages.g.dart';

/// IdentifiedLanguages
///
/// Properties:
/// * [languages] - A ranking of identified languages with confidence scores.
abstract class IdentifiedLanguages implements Built<IdentifiedLanguages, IdentifiedLanguagesBuilder> {
    /// A ranking of identified languages with confidence scores.
    @BuiltValueField(wireName: r'languages')
    BuiltList<IdentifiedLanguage> get languages;

    IdentifiedLanguages._();

    static void _initializeBuilder(IdentifiedLanguagesBuilder b) => b;

    factory IdentifiedLanguages([void updates(IdentifiedLanguagesBuilder b)]) = _$IdentifiedLanguages;

    @BuiltValueSerializer(custom: true)
    static Serializer<IdentifiedLanguages> get serializer => _$IdentifiedLanguagesSerializer();
}

class _$IdentifiedLanguagesSerializer implements StructuredSerializer<IdentifiedLanguages> {
    @override
    final Iterable<Type> types = const [IdentifiedLanguages, _$IdentifiedLanguages];

    @override
    final String wireName = r'IdentifiedLanguages';

    @override
    Iterable<Object?> serialize(Serializers serializers, IdentifiedLanguages object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'languages')
            ..add(serializers.serialize(object.languages,
                specifiedType: const FullType(BuiltList, [FullType(IdentifiedLanguage)])));
        return result;
    }

    @override
    IdentifiedLanguages deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = IdentifiedLanguagesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'languages':
                    result.languages.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(IdentifiedLanguage)])) as BuiltList<IdentifiedLanguage>);
                    break;
            }
        }
        return result.build();
    }
}

