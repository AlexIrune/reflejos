import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuarios_record.g.dart';

abstract class UsuariosRecord
    implements Built<UsuariosRecord, UsuariosRecordBuilder> {
  static Serializer<UsuariosRecord> get serializer =>
      _$usuariosRecordSerializer;

  String? get nombre;

  String? get sexo;

  String? get uid;

  int? get altura;

  double? get peso;

  bool? get activo;

  DateTime? get fechaNacimiento;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsuariosRecordBuilder builder) => builder
    ..nombre = ''
    ..sexo = ''
    ..uid = ''
    ..altura = 0
    ..peso = 0.0
    ..activo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsuariosRecord._();
  factory UsuariosRecord([void Function(UsuariosRecordBuilder) updates]) =
      _$UsuariosRecord;

  static UsuariosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsuariosRecordData({
  String? nombre,
  String? sexo,
  String? uid,
  int? altura,
  double? peso,
  bool? activo,
  DateTime? fechaNacimiento,
}) {
  final firestoreData = serializers.toFirestore(
    UsuariosRecord.serializer,
    UsuariosRecord(
      (u) => u
        ..nombre = nombre
        ..sexo = sexo
        ..uid = uid
        ..altura = altura
        ..peso = peso
        ..activo = activo
        ..fechaNacimiento = fechaNacimiento,
    ),
  );

  return firestoreData;
}
