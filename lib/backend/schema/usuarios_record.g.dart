// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuarios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuariosRecord> _$usuariosRecordSerializer =
    new _$UsuariosRecordSerializer();

class _$UsuariosRecordSerializer
    implements StructuredSerializer<UsuariosRecord> {
  @override
  final Iterable<Type> types = const [UsuariosRecord, _$UsuariosRecord];
  @override
  final String wireName = 'UsuariosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsuariosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sexo;
    if (value != null) {
      result
        ..add('sexo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.altura;
    if (value != null) {
      result
        ..add('altura')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.peso;
    if (value != null) {
      result
        ..add('peso')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.activo;
    if (value != null) {
      result
        ..add('activo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.fechaNacimiento;
    if (value != null) {
      result
        ..add('fechaNacimiento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  UsuariosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuariosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sexo':
          result.sexo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'altura':
          result.altura = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'peso':
          result.peso = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'activo':
          result.activo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'fechaNacimiento':
          result.fechaNacimiento = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$UsuariosRecord extends UsuariosRecord {
  @override
  final String? nombre;
  @override
  final String? sexo;
  @override
  final String? uid;
  @override
  final int? altura;
  @override
  final double? peso;
  @override
  final bool? activo;
  @override
  final DateTime? fechaNacimiento;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsuariosRecord([void Function(UsuariosRecordBuilder)? updates]) =>
      (new UsuariosRecordBuilder()..update(updates))._build();

  _$UsuariosRecord._(
      {this.nombre,
      this.sexo,
      this.uid,
      this.altura,
      this.peso,
      this.activo,
      this.fechaNacimiento,
      this.ffRef})
      : super._();

  @override
  UsuariosRecord rebuild(void Function(UsuariosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuariosRecordBuilder toBuilder() =>
      new UsuariosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuariosRecord &&
        nombre == other.nombre &&
        sexo == other.sexo &&
        uid == other.uid &&
        altura == other.altura &&
        peso == other.peso &&
        activo == other.activo &&
        fechaNacimiento == other.fechaNacimiento &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, sexo.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, altura.hashCode);
    _$hash = $jc(_$hash, peso.hashCode);
    _$hash = $jc(_$hash, activo.hashCode);
    _$hash = $jc(_$hash, fechaNacimiento.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsuariosRecord')
          ..add('nombre', nombre)
          ..add('sexo', sexo)
          ..add('uid', uid)
          ..add('altura', altura)
          ..add('peso', peso)
          ..add('activo', activo)
          ..add('fechaNacimiento', fechaNacimiento)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsuariosRecordBuilder
    implements Builder<UsuariosRecord, UsuariosRecordBuilder> {
  _$UsuariosRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _sexo;
  String? get sexo => _$this._sexo;
  set sexo(String? sexo) => _$this._sexo = sexo;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  int? _altura;
  int? get altura => _$this._altura;
  set altura(int? altura) => _$this._altura = altura;

  double? _peso;
  double? get peso => _$this._peso;
  set peso(double? peso) => _$this._peso = peso;

  bool? _activo;
  bool? get activo => _$this._activo;
  set activo(bool? activo) => _$this._activo = activo;

  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _$this._fechaNacimiento;
  set fechaNacimiento(DateTime? fechaNacimiento) =>
      _$this._fechaNacimiento = fechaNacimiento;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsuariosRecordBuilder() {
    UsuariosRecord._initializeBuilder(this);
  }

  UsuariosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _sexo = $v.sexo;
      _uid = $v.uid;
      _altura = $v.altura;
      _peso = $v.peso;
      _activo = $v.activo;
      _fechaNacimiento = $v.fechaNacimiento;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuariosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuariosRecord;
  }

  @override
  void update(void Function(UsuariosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsuariosRecord build() => _build();

  _$UsuariosRecord _build() {
    final _$result = _$v ??
        new _$UsuariosRecord._(
            nombre: nombre,
            sexo: sexo,
            uid: uid,
            altura: altura,
            peso: peso,
            activo: activo,
            fechaNacimiento: fechaNacimiento,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
