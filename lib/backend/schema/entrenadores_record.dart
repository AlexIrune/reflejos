import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'entrenadores_record.g.dart';

abstract class EntrenadoresRecord
    implements Built<EntrenadoresRecord, EntrenadoresRecordBuilder> {
  static Serializer<EntrenadoresRecord> get serializer =>
      _$entrenadoresRecordSerializer;

  String? get nombre;

  String? get uid;

  bool? get activo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EntrenadoresRecordBuilder builder) => builder
    ..nombre = ''
    ..uid = ''
    ..activo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('entrenadores');

  static Stream<EntrenadoresRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EntrenadoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EntrenadoresRecord._();
  factory EntrenadoresRecord(
          [void Function(EntrenadoresRecordBuilder) updates]) =
      _$EntrenadoresRecord;

  static EntrenadoresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEntrenadoresRecordData({
  String? nombre,
  String? uid,
  bool? activo,
}) {
  final firestoreData = serializers.toFirestore(
    EntrenadoresRecord.serializer,
    EntrenadoresRecord(
      (e) => e
        ..nombre = nombre
        ..uid = uid
        ..activo = activo,
    ),
  );

  return firestoreData;
}
