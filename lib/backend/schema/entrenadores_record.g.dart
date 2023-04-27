// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entrenadores_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EntrenadoresRecord> _$entrenadoresRecordSerializer =
    new _$EntrenadoresRecordSerializer();

class _$EntrenadoresRecordSerializer
    implements StructuredSerializer<EntrenadoresRecord> {
  @override
  final Iterable<Type> types = const [EntrenadoresRecord, _$EntrenadoresRecord];
  @override
  final String wireName = 'EntrenadoresRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EntrenadoresRecord object,
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
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.activo;
    if (value != null) {
      result
        ..add('activo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  EntrenadoresRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EntrenadoresRecordBuilder();

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
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'activo':
          result.activo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$EntrenadoresRecord extends EntrenadoresRecord {
  @override
  final String? nombre;
  @override
  final String? uid;
  @override
  final bool? activo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EntrenadoresRecord(
          [void Function(EntrenadoresRecordBuilder)? updates]) =>
      (new EntrenadoresRecordBuilder()..update(updates))._build();

  _$EntrenadoresRecord._({this.nombre, this.uid, this.activo, this.ffRef})
      : super._();

  @override
  EntrenadoresRecord rebuild(
          void Function(EntrenadoresRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntrenadoresRecordBuilder toBuilder() =>
      new EntrenadoresRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntrenadoresRecord &&
        nombre == other.nombre &&
        uid == other.uid &&
        activo == other.activo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, activo.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntrenadoresRecord')
          ..add('nombre', nombre)
          ..add('uid', uid)
          ..add('activo', activo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EntrenadoresRecordBuilder
    implements Builder<EntrenadoresRecord, EntrenadoresRecordBuilder> {
  _$EntrenadoresRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  bool? _activo;
  bool? get activo => _$this._activo;
  set activo(bool? activo) => _$this._activo = activo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EntrenadoresRecordBuilder() {
    EntrenadoresRecord._initializeBuilder(this);
  }

  EntrenadoresRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _uid = $v.uid;
      _activo = $v.activo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntrenadoresRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntrenadoresRecord;
  }

  @override
  void update(void Function(EntrenadoresRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntrenadoresRecord build() => _build();

  _$EntrenadoresRecord _build() {
    final _$result = _$v ??
        new _$EntrenadoresRecord._(
            nombre: nombre, uid: uid, activo: activo, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
