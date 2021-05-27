//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:ibm_apis/language_translator/model/translation_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'translation_models.g.dart';

/// The response type for listing existing translation models.
///
/// Properties:
/// * [models] - An array of available models.
abstract class TranslationModels implements Built<TranslationModels, TranslationModelsBuilder> {
    /// An array of available models.
    @BuiltValueField(wireName: r'models')
    BuiltList<TranslationModel> get models;

    TranslationModels._();

    static void _initializeBuilder(TranslationModelsBuilder b) => b;

    factory TranslationModels([void updates(TranslationModelsBuilder b)]) = _$TranslationModels;

    @BuiltValueSerializer(custom: true)
    static Serializer<TranslationModels> get serializer => _$TranslationModelsSerializer();
}

class _$TranslationModelsSerializer implements StructuredSerializer<TranslationModels> {
    @override
    final Iterable<Type> types = const [TranslationModels, _$TranslationModels];

    @override
    final String wireName = r'TranslationModels';

    @override
    Iterable<Object?> serialize(Serializers serializers, TranslationModels object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'models')
            ..add(serializers.serialize(object.models,
                specifiedType: const FullType(BuiltList, [FullType(TranslationModel)])));
        return result;
    }

    @override
    TranslationModels deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TranslationModelsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'models':
                    result.models.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(TranslationModel)])) as BuiltList<TranslationModel>);
                    break;
            }
        }
        return result.build();
    }
}

