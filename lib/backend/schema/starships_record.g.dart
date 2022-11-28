// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starships_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StarshipsRecord> _$starshipsRecordSerializer =
    new _$StarshipsRecordSerializer();

class _$StarshipsRecordSerializer
    implements StructuredSerializer<StarshipsRecord> {
  @override
  final Iterable<Type> types = const [StarshipsRecord, _$StarshipsRecord];
  @override
  final String wireName = 'StarshipsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StarshipsRecord object,
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
    value = object.people;
    if (value != null) {
      result
        ..add('people')
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
    value = object.speed;
    if (value != null) {
      result
        ..add('speed')
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
  StarshipsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StarshipsRecordBuilder();

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
        case 'people':
          result.people = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'speed':
          result.speed = serializers.deserialize(value,
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

class _$StarshipsRecord extends StarshipsRecord {
  @override
  final String? name;
  @override
  final String? people;
  @override
  final String? imagen;
  @override
  final String? speed;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StarshipsRecord([void Function(StarshipsRecordBuilder)? updates]) =>
      (new StarshipsRecordBuilder()..update(updates))._build();

  _$StarshipsRecord._(
      {this.name, this.people, this.imagen, this.speed, this.ffRef})
      : super._();

  @override
  StarshipsRecord rebuild(void Function(StarshipsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StarshipsRecordBuilder toBuilder() =>
      new StarshipsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StarshipsRecord &&
        name == other.name &&
        people == other.people &&
        imagen == other.imagen &&
        speed == other.speed &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), people.hashCode), imagen.hashCode),
            speed.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StarshipsRecord')
          ..add('name', name)
          ..add('people', people)
          ..add('imagen', imagen)
          ..add('speed', speed)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StarshipsRecordBuilder
    implements Builder<StarshipsRecord, StarshipsRecordBuilder> {
  _$StarshipsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _people;
  String? get people => _$this._people;
  set people(String? people) => _$this._people = people;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  String? _speed;
  String? get speed => _$this._speed;
  set speed(String? speed) => _$this._speed = speed;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StarshipsRecordBuilder() {
    StarshipsRecord._initializeBuilder(this);
  }

  StarshipsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _people = $v.people;
      _imagen = $v.imagen;
      _speed = $v.speed;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StarshipsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StarshipsRecord;
  }

  @override
  void update(void Function(StarshipsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StarshipsRecord build() => _build();

  _$StarshipsRecord _build() {
    final _$result = _$v ??
        new _$StarshipsRecord._(
            name: name,
            people: people,
            imagen: imagen,
            speed: speed,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
