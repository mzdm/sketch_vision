//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'translate_request.g.dart';

/// TranslateRequest
///
/// Properties:
/// * [text] - Input text in UTF-8 encoding. Submit a maximum of 50 KB (51,200 bytes) of text with a single request. Multiple elements result in multiple translations in the response.
/// * [modelId] - The model to use for translation. For example, `en-de` selects the IBM-provided base model for English-to-German translation. A model ID overrides the `source` and `target` parameters and is required if you use a custom model. If no model ID is specified, you must specify at least a target language.
/// * [source_] - Language code that specifies the language of the input text. If omitted, the service derives the source language from the input text. The input must contain sufficient text for the service to identify the language reliably.
/// * [target] - Language code that specifies the target language for translation. Required if model ID is not specified.
abstract class TranslateRequest implements Built<TranslateRequest, TranslateRequestBuilder> {
    /// Input text in UTF-8 encoding. Submit a maximum of 50 KB (51,200 bytes) of text with a single request. Multiple elements result in multiple translations in the response.
    @BuiltValueField(wireName: r'text')
    BuiltList<String> get text;

    /// The model to use for translation. For example, `en-de` selects the IBM-provided base model for English-to-German translation. A model ID overrides the `source` and `target` parameters and is required if you use a custom model. If no model ID is specified, you must specify at least a target language.
    @BuiltValueField(wireName: r'model_id')
    String? get modelId;

    /// Language code that specifies the language of the input text. If omitted, the service derives the source language from the input text. The input must contain sufficient text for the service to identify the language reliably.
    @BuiltValueField(wireName: r'source')
    String? get source_;

    /// Language code that specifies the target language for translation. Required if model ID is not specified.
    @BuiltValueField(wireName: r'target')
    String? get target;

    TranslateRequest._();

    static void _initializeBuilder(TranslateRequestBuilder b) => b;

    factory TranslateRequest([void updates(TranslateRequestBuilder b)]) = _$TranslateRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<TranslateRequest> get serializer => _$TranslateRequestSerializer();
}

class _$TranslateRequestSerializer implements StructuredSerializer<TranslateRequest> {
    @override
    final Iterable<Type> types = const [TranslateRequest, _$TranslateRequest];

    @override
    final String wireName = r'TranslateRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, TranslateRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'text')
            ..add(serializers.serialize(object.text,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        if (object.modelId != null) {
            result
                ..add(r'model_id')
                ..add(serializers.serialize(object.modelId,
                    specifiedType: const FullType(String)));
        }
        if (object.source_ != null) {
            result
                ..add(r'source')
                ..add(serializers.serialize(object.source_,
                    specifiedType: const FullType(String)));
        }
        if (object.target != null) {
            result
                ..add(r'target')
                ..add(serializers.serialize(object.target,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    TranslateRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TranslateRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'text':
                    result.text.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>);
                    break;
                case r'model_id':
                    result.modelId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'source':
                    result.source_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'target':
                    result.target = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

