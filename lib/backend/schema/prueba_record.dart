import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prueba_record.g.dart';

abstract class PruebaRecord
    implements Built<PruebaRecord, PruebaRecordBuilder> {
  static Serializer<PruebaRecord> get serializer => _$pruebaRecordSerializer;

  String? get name;

  String? get type;

  String? get mass;

  String? get description;

  String? get imagen;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PruebaRecordBuilder builder) => builder
    ..name = ''
    ..type = ''
    ..mass = ''
    ..description = ''
    ..imagen = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prueba');

  static Stream<PruebaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PruebaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PruebaRecord._();
  factory PruebaRecord([void Function(PruebaRecordBuilder) updates]) =
      _$PruebaRecord;

  static PruebaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPruebaRecordData({
  String? name,
  String? type,
  String? mass,
  String? description,
  String? imagen,
}) {
  final firestoreData = serializers.toFirestore(
    PruebaRecord.serializer,
    PruebaRecord(
      (p) => p
        ..name = name
        ..type = type
        ..mass = mass
        ..description = description
        ..imagen = imagen,
    ),
  );

  return firestoreData;
}
