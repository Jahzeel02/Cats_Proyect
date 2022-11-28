// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prueba_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PruebaRecord> _$pruebaRecordSerializer =
    new _$PruebaRecordSerializer();

class _$PruebaRecordSerializer implements StructuredSerializer<PruebaRecord> {
  @override
  final Iterable<Type> types = const [PruebaRecord, _$PruebaRecord];
  @override
  final String wireName = 'PruebaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PruebaRecord object,
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
    value = object.type;
    if (value != null) {
      result
        ..add('type')
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
  PruebaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PruebaRecordBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mass':
          result.mass = serializers.deserialize(value,
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

class _$PruebaRecord extends PruebaRecord {
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? mass;
  @override
  final String? description;
  @override
  final String? imagen;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PruebaRecord([void Function(PruebaRecordBuilder)? updates]) =>
      (new PruebaRecordBuilder()..update(updates))._build();

  _$PruebaRecord._(
      {this.name,
      this.type,
      this.mass,
      this.description,
      this.imagen,
      this.ffRef})
      : super._();

  @override
  PruebaRecord rebuild(void Function(PruebaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PruebaRecordBuilder toBuilder() => new PruebaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PruebaRecord &&
        name == other.name &&
        type == other.type &&
        mass == other.mass &&
        description == other.description &&
        imagen == other.imagen &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, name.hashCode), type.hashCode), mass.hashCode),
                description.hashCode),
            imagen.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PruebaRecord')
          ..add('name', name)
          ..add('type', type)
          ..add('mass', mass)
          ..add('description', description)
          ..add('imagen', imagen)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PruebaRecordBuilder
    implements Builder<PruebaRecord, PruebaRecordBuilder> {
  _$PruebaRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _mass;
  String? get mass => _$this._mass;
  set mass(String? mass) => _$this._mass = mass;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PruebaRecordBuilder() {
    PruebaRecord._initializeBuilder(this);
  }

  PruebaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _mass = $v.mass;
      _description = $v.description;
      _imagen = $v.imagen;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PruebaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PruebaRecord;
  }

  @override
  void update(void Function(PruebaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PruebaRecord build() => _build();

  _$PruebaRecord _build() {
    final _$result = _$v ??
        new _$PruebaRecord._(
            name: name,
            type: type,
            mass: mass,
            description: description,
            imagen: imagen,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
