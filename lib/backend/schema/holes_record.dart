import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'holes_record.g.dart';

abstract class HolesRecord implements Built<HolesRecord, HolesRecordBuilder> {
  static Serializer<HolesRecord> get serializer => _$holesRecordSerializer;

  String? get name;

  String? get mass;

  String? get size;

  String? get description;

  String? get imagen;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HolesRecordBuilder builder) => builder
    ..name = ''
    ..mass = ''
    ..size = ''
    ..description = ''
    ..imagen = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('holes');

  static Stream<HolesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HolesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HolesRecord._();
  factory HolesRecord([void Function(HolesRecordBuilder) updates]) =
      _$HolesRecord;

  static HolesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHolesRecordData({
  String? name,
  String? mass,
  String? size,
  String? description,
  String? imagen,
}) {
  final firestoreData = serializers.toFirestore(
    HolesRecord.serializer,
    HolesRecord(
      (h) => h
        ..name = name
        ..mass = mass
        ..size = size
        ..description = description
        ..imagen = imagen,
    ),
  );

  return firestoreData;
}
