//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:ibm_apis/language_translator/model/document_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'document_list.g.dart';

/// DocumentList
///
/// Properties:
/// * [documents] - An array of all previously submitted documents.
abstract class DocumentList implements Built<DocumentList, DocumentListBuilder> {
    /// An array of all previously submitted documents.
    @BuiltValueField(wireName: r'documents')
    BuiltList<DocumentStatus> get documents;

    DocumentList._();

    static void _initializeBuilder(DocumentListBuilder b) => b;

    factory DocumentList([void updates(DocumentListBuilder b)]) = _$DocumentList;

    @BuiltValueSerializer(custom: true)
    static Serializer<DocumentList> get serializer => _$DocumentListSerializer();
}

class _$DocumentListSerializer implements StructuredSerializer<DocumentList> {
    @override
    final Iterable<Type> types = const [DocumentList, _$DocumentList];

    @override
    final String wireName = r'DocumentList';

    @override
    Iterable<Object?> serialize(Serializers serializers, DocumentList object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'documents')
            ..add(serializers.serialize(object.documents,
                specifiedType: const FullType(BuiltList, [FullType(DocumentStatus)])));
        return result;
    }

    @override
    DocumentList deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DocumentListBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            switch (key) {
                case r'documents':
                    result.documents.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(DocumentStatus)])) as BuiltList<DocumentStatus>);
                    break;
            }
        }
        return result.build();
    }
}

