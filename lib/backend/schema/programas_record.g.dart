// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'programas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProgramasRecord> _$programasRecordSerializer =
    new _$ProgramasRecordSerializer();

class _$ProgramasRecordSerializer
    implements StructuredSerializer<ProgramasRecord> {
  @override
  final Iterable<Type> types = const [ProgramasRecord, _$ProgramasRecord];
  @override
  final String wireName = 'ProgramasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProgramasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ciclos;
    if (value != null) {
      result
        ..add('ciclos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dispositivos;
    if (value != null) {
      result
        ..add('dispositivos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.distanciaActivacion;
    if (value != null) {
      result
        ..add('distanciaActivacion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.participantes;
    if (value != null) {
      result
        ..add('participantes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sonido;
    if (value != null) {
      result
        ..add('sonido')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.tiempoCiclos;
    if (value != null) {
      result
        ..add('tiempoCiclos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tiempoEspera;
    if (value != null) {
      result
        ..add('tiempoEspera')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ProgramasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProgramasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ciclos':
          result.ciclos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dispositivos':
          result.dispositivos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'distanciaActivacion':
          result.distanciaActivacion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'participantes':
          result.participantes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sonido':
          result.sonido = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'tiempoCiclos':
          result.tiempoCiclos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tiempoEspera':
          result.tiempoEspera = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProgramasRecord extends ProgramasRecord {
  @override
  final int? ciclos;
  @override
  final int? dispositivos;
  @override
  final int? distanciaActivacion;
  @override
  final String? nombre;
  @override
  final int? participantes;
  @override
  final bool? sonido;
  @override
  final int? tiempoCiclos;
  @override
  final int? tiempoEspera;
  @override
  final String? uid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProgramasRecord([void Function(ProgramasRecordBuilder)? updates]) =>
      (new ProgramasRecordBuilder()..update(updates))._build();

  _$ProgramasRecord._(
      {this.ciclos,
      this.dispositivos,
      this.distanciaActivacion,
      this.nombre,
      this.participantes,
      this.sonido,
      this.tiempoCiclos,
      this.tiempoEspera,
      this.uid,
      this.ffRef})
      : super._();

  @override
  ProgramasRecord rebuild(void Function(ProgramasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProgramasRecordBuilder toBuilder() =>
      new ProgramasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProgramasRecord &&
        ciclos == other.ciclos &&
        dispositivos == other.dispositivos &&
        distanciaActivacion == other.distanciaActivacion &&
        nombre == other.nombre &&
        participantes == other.participantes &&
        sonido == other.sonido &&
        tiempoCiclos == other.tiempoCiclos &&
        tiempoEspera == other.tiempoEspera &&
        uid == other.uid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ciclos.hashCode);
    _$hash = $jc(_$hash, dispositivos.hashCode);
    _$hash = $jc(_$hash, distanciaActivacion.hashCode);
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, participantes.hashCode);
    _$hash = $jc(_$hash, sonido.hashCode);
    _$hash = $jc(_$hash, tiempoCiclos.hashCode);
    _$hash = $jc(_$hash, tiempoEspera.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProgramasRecord')
          ..add('ciclos', ciclos)
          ..add('dispositivos', dispositivos)
          ..add('distanciaActivacion', distanciaActivacion)
          ..add('nombre', nombre)
          ..add('participantes', participantes)
          ..add('sonido', sonido)
          ..add('tiempoCiclos', tiempoCiclos)
          ..add('tiempoEspera', tiempoEspera)
          ..add('uid', uid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProgramasRecordBuilder
    implements Builder<ProgramasRecord, ProgramasRecordBuilder> {
  _$ProgramasRecord? _$v;

  int? _ciclos;
  int? get ciclos => _$this._ciclos;
  set ciclos(int? ciclos) => _$this._ciclos = ciclos;

  int? _dispositivos;
  int? get dispositivos => _$this._dispositivos;
  set dispositivos(int? dispositivos) => _$this._dispositivos = dispositivos;

  int? _distanciaActivacion;
  int? get distanciaActivacion => _$this._distanciaActivacion;
  set distanciaActivacion(int? distanciaActivacion) =>
      _$this._distanciaActivacion = distanciaActivacion;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  int? _participantes;
  int? get participantes => _$this._participantes;
  set participantes(int? participantes) =>
      _$this._participantes = participantes;

  bool? _sonido;
  bool? get sonido => _$this._sonido;
  set sonido(bool? sonido) => _$this._sonido = sonido;

  int? _tiempoCiclos;
  int? get tiempoCiclos => _$this._tiempoCiclos;
  set tiempoCiclos(int? tiempoCiclos) => _$this._tiempoCiclos = tiempoCiclos;

  int? _tiempoEspera;
  int? get tiempoEspera => _$this._tiempoEspera;
  set tiempoEspera(int? tiempoEspera) => _$this._tiempoEspera = tiempoEspera;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProgramasRecordBuilder() {
    ProgramasRecord._initializeBuilder(this);
  }

  ProgramasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ciclos = $v.ciclos;
      _dispositivos = $v.dispositivos;
      _distanciaActivacion = $v.distanciaActivacion;
      _nombre = $v.nombre;
      _participantes = $v.participantes;
      _sonido = $v.sonido;
      _tiempoCiclos = $v.tiempoCiclos;
      _tiempoEspera = $v.tiempoEspera;
      _uid = $v.uid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProgramasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProgramasRecord;
  }

  @override
  void update(void Function(ProgramasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProgramasRecord build() => _build();

  _$ProgramasRecord _build() {
    final _$result = _$v ??
        new _$ProgramasRecord._(
            ciclos: ciclos,
            dispositivos: dispositivos,
            distanciaActivacion: distanciaActivacion,
            nombre: nombre,
            participantes: participantes,
            sonido: sonido,
            tiempoCiclos: tiempoCiclos,
            tiempoEspera: tiempoEspera,
            uid: uid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
