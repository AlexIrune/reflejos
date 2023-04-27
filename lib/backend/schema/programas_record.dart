import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'programas_record.g.dart';

abstract class ProgramasRecord
    implements Built<ProgramasRecord, ProgramasRecordBuilder> {
  static Serializer<ProgramasRecord> get serializer =>
      _$programasRecordSerializer;

  int? get ciclos;

  int? get dispositivos;

  int? get distanciaActivacion;

  String? get nombre;

  int? get participantes;

  bool? get sonido;

  int? get tiempoCiclos;

  int? get tiempoEspera;

  String? get uid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProgramasRecordBuilder builder) => builder
    ..ciclos = 0
    ..dispositivos = 0
    ..distanciaActivacion = 0
    ..nombre = ''
    ..participantes = 0
    ..sonido = false
    ..tiempoCiclos = 0
    ..tiempoEspera = 0
    ..uid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('programas');

  static Stream<ProgramasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProgramasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProgramasRecord._();
  factory ProgramasRecord([void Function(ProgramasRecordBuilder) updates]) =
      _$ProgramasRecord;

  static ProgramasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProgramasRecordData({
  int? ciclos,
  int? dispositivos,
  int? distanciaActivacion,
  String? nombre,
  int? participantes,
  bool? sonido,
  int? tiempoCiclos,
  int? tiempoEspera,
  String? uid,
}) {
  final firestoreData = serializers.toFirestore(
    ProgramasRecord.serializer,
    ProgramasRecord(
      (p) => p
        ..ciclos = ciclos
        ..dispositivos = dispositivos
        ..distanciaActivacion = distanciaActivacion
        ..nombre = nombre
        ..participantes = participantes
        ..sonido = sonido
        ..tiempoCiclos = tiempoCiclos
        ..tiempoEspera = tiempoEspera
        ..uid = uid,
    ),
  );

  return firestoreData;
}
