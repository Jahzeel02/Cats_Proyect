import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'starships_record.g.dart';

abstract class StarshipsRecord
    implements Built<StarshipsRecord, StarshipsRecordBuilder> {
  static Serializer<StarshipsRecord> get serializer =>
      _$starshipsRecordSerializer;

  String? get name;

  String? get people;

  String? get imagen;

  String? get speed;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StarshipsRecordBuilder builder) => builder
    ..name = ''
    ..people = ''
    ..imagen = ''
    ..speed = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('starships');

  static Stream<StarshipsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StarshipsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StarshipsRecord._();
  factory StarshipsRecord([void Function(StarshipsRecordBuilder) updates]) =
      _$StarshipsRecord;

  static StarshipsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStarshipsRecordData({
  String? name,
  String? people,
  String? imagen,
  String? speed,
}) {
  final firestoreData = serializers.toFirestore(
    StarshipsRecord.serializer,
    StarshipsRecord(
      (s) => s
        ..name = name
        ..people = people
        ..imagen = imagen
        ..speed = speed,
    ),
  );

  return firestoreData;
}
