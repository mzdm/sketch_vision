//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ibm_apis/src/language_translator/model/translation_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'document_status.g.dart';

/// Document information, including translation status.
///
/// Properties:
/// * [documentId] - System generated ID identifying a document being translated using one specific translation model
/// * [filename] - filename from the submission (if it was missing in the multipart-form, 'noname.<ext matching content type>' is used.
/// * [status] 
/// * [modelId] - A globally unique string that identifies the underlying model that is used for translation
/// * [baseModelId] - Model ID of the base model that was used to customize the model. If the model is not a custom model, this will be absent or an empty string.
/// * [source_] - Translation source language code
/// * [detectedLanguageConfidence] - A score between 0 and 1 indicating the confidence of source language detection. A higher value indicates greater confidence. This is returned only when the service automatically detects the source language.
/// * [target] - Translation target language code
/// * [created] - The time when the document was submitted.
/// * [completed] - The time when the translation completed.
/// * [wordCount] - An estimate of the number of words in the source document. Returned only if `status` is `available`.
/// * [characterCount] - The number of characters in the source document, present only if status=available.
abstract class DocumentStatus implements Built<DocumentStatus, DocumentStatusBuilder> {
    /// System generated ID identifying a document being translated using one specific translation model
    @BuiltValueField(wireName: r'document_id')
    String get documentId;

    /// filename from the submission (if it was missing in the multipart-form, 'noname.<ext matching content type>' is used.
    @BuiltValueField(wireName: r'filename')
    String get filename;

    @BuiltValueField(wireName: r'status')
    TranslationStatus get status;
    // enum statusEnum {  processing,  available,  failed,  };

    /// A globally unique string that identifies the underlying model that is used for translation
    @BuiltValueField(wireName: r'model_id')
    String get modelId;

    /// Model ID of the base model that was used to customize the model. If the model is not a custom model, this will be absent or an empty string.
    @BuiltValueField(wireName: r'base_model_id')
    String? get baseModelId;

    /// Translation source language code
    @BuiltValueField(wireName: r'source')
    String get source_;

    /// A score between 0 and 1 indicating the confidence of source language detection. A higher value indicates greater confidence. This is returned only when the service automatically detects the source language.
    @BuiltValueField(wireName: r'detected_language_confidence')
    double? get detectedLanguageConfidence;

    /// Translation target language code
    @BuiltValueField(wireName: r'target')
    String get target;

    /// The time when the document was submitted.
    @BuiltValueField(wireName: r'created')
    DateTime get created;

    /// The time when the translation completed.
    @BuiltValueField(wireName: r'completed')
    DateTime? get completed;

    /// An estimate of the number of words in the source document. Returned only if `status` is `available`.
    @BuiltValueField(wireName: r'word_count')
    int? get wordCount;

    /// The number of characters in the source document, present only if status=available.
    @BuiltValueField(wireName: r'character_count')
    int? get characterCount;

    DocumentStatus._();

    static void _initializeBuilder(DocumentStatusBuilder b) => b;

    factory DocumentStatus([void updates(DocumentStatusBuilder b)]) = _$DocumentStatus;

    @BuiltValueSerializer(custom: true)
    static Serializer<DocumentStatus> get serializer => _$DocumentStatusSerializer();
}

class _$DocumentStatusSerializer implements StructuredSerializer<DocumentStatus> {
    @override
    final Iterable<Type> types = const [DocumentStatus, _$DocumentStatus];

    @override
    final String wireName = r'DocumentStatus';

    @override
    Iterable<Object?> serialize(Serializers serializers, DocumentStatus object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'document_id')
            ..add(serializers.serialize(object.documentId,
                specifiedType: const FullType(String)));
        result
            ..add(r'filename')
            ..add(serializers.serialize(object.filename,
                specifiedType: const FullType(String)));
        result
            ..add(r'status')
            ..add(serializers.serialize(object.status,
                specifiedType: const FullType(TranslationStatus)));
        result
            ..add(r'model_id')
            ..add(serializers.serialize(object.modelId,
                specifiedType: const FullType(String)));
        if (object.baseModelId != null) {
            result
                ..add(r'base_model_id')
                ..add(serializers.serialize(object.baseModelId,
                    specifiedType: const FullType(String)));
        }
        result
            ..add(r'source')
            ..add(serializers.serialize(object.source_,
                specifiedType: const FullType(String)));
        if (object.detectedLanguageConfidence != null) {
            result
                ..add(r'detected_language_confidence')
                ..add(serializers.serialize(object.detectedLanguageConfidence,
                    specifiedType: const FullType(double)));
        }
        result
            ..add(r'target')
            ..add(serializers.serialize(object.target,
                specifiedType: const FullType(String)));
        result
            ..add(r'created')
            ..add(serializers.serialize(object.created,
                specifiedType: const FullType(DateTime)));
        if (object.completed != null) {
            result
                ..add(r'completed')
                ..add(serializers.serialize(object.completed,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.wordCount != null) {
            result
                ..add(r'word_count')
                ..add(serializers.serialize(object.wordCount,
                    specifiedType: const FullType(int)));
        }
        if (object.characterCount != null) {
            result
                ..add(r'character_count')
                ..add(serializers.serialize(object.characterCount,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    DocumentStatus deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DocumentStatusBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'document_id':
                    result.documentId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'filename':
                    result.filename = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'status':
                    result.status = serializers.deserialize(value,
                        specifiedType: const FullType(TranslationStatus)) as TranslationStatus;
                    break;
                case r'model_id':
                    result.modelId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'base_model_id':
                    result.baseModelId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'source':
                    result.source_ = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'detected_language_confidence':
                    result.detectedLanguageConfidence = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'target':
                    result.target = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'created':
                    result.created = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'completed':
                    result.completed = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'word_count':
                    result.wordCount = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'character_count':
                    result.characterCount = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

