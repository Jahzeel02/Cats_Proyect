// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HolesRecord> _$holesRecordSerializer = new _$HolesRecordSerializer();

class _$HolesRecordSerializer implements StructuredSerializer<HolesRecord> {
  @override
  final Iterable<Type> types = const [HolesRecord, _$HolesRecord];
  @override
  final String wireName = 'HolesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HolesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mass;
    if (value != null) {
      result
        ..add('mass')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.size;
    if (value != null) {
      result
        ..add('size')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('imagen')
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
  HolesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HolesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mass':
          result.mass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagen':
          result.imagen = serializers.deserialize(value,
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

class _$HolesRecord extends HolesRecord {
  @override
  final String? name;
  @override
  final String? mass;
  @override
  final String? size;
  @override
  final String? description;
  @override
  final String? imagen;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HolesRecord([void Function(HolesRecordBuilder)? updates]) =>
      (new HolesRecordBuilder()..update(updates))._build();

  _$HolesRecord._(
      {this.name,
      this.mass,
      this.size,
      this.description,
      this.imagen,
      this.ffRef})
      : super._();

  @override
  HolesRecord rebuild(void Function(HolesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HolesRecordBuilder toBuilder() => new HolesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HolesRecord &&
        name == other.name &&
        mass == other.mass &&
        size == other.size &&
        description == other.description &&
        imagen == other.imagen &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, name.hashCode), mass.hashCode), size.hashCode),
                description.hashCode),
            imagen.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HolesRecord')
          ..add('name', name)
          ..add('mass', mass)
          ..add('size', size)
          ..add('description', description)
          ..add('imagen', imagen)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HolesRecordBuilder implements Builder<HolesRecord, HolesRecordBuilder> {
  _$HolesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _mass;
  String? get mass => _$this._mass;
  set mass(String? mass) => _$this._mass = mass;

  String? _size;
  String? get size => _$this._size;
  set size(String? size) => _$this._size = size;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HolesRecordBuilder() {
    HolesRecord._initializeBuilder(this);
  }

  HolesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _mass = $v.mass;
      _size = $v.size;
      _description = $v.description;
      _imagen = $v.imagen;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HolesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HolesRecord;
  }

  @override
  void update(void Function(HolesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HolesRecord build() => _build();

  _$HolesRecord _build() {
    final _$result = _$v ??
        new _$HolesRecord._(
            name: name,
            mass: mass,
            size: size,
            description: description,
            imagen: imagen,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
