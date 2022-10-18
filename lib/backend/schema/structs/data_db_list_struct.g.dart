// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_db_list_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DataDbListStruct> _$dataDbListStructSerializer =
    new _$DataDbListStructSerializer();

class _$DataDbListStructSerializer
    implements StructuredSerializer<DataDbListStruct> {
  @override
  final Iterable<Type> types = const [DataDbListStruct, _$DataDbListStruct];
  @override
  final String wireName = 'DataDbListStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, DataDbListStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DataDbListStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataDbListStructBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$DataDbListStruct extends DataDbListStruct {
  @override
  final String? name;
  @override
  final String? id;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$DataDbListStruct(
          [void Function(DataDbListStructBuilder)? updates]) =>
      (new DataDbListStructBuilder()..update(updates))._build();

  _$DataDbListStruct._({this.name, this.id, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'DataDbListStruct', 'firestoreUtilData');
  }

  @override
  DataDbListStruct rebuild(void Function(DataDbListStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataDbListStructBuilder toBuilder() =>
      new DataDbListStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataDbListStruct &&
        name == other.name &&
        id == other.id &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, name.hashCode), id.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataDbListStruct')
          ..add('name', name)
          ..add('id', id)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class DataDbListStructBuilder
    implements Builder<DataDbListStruct, DataDbListStructBuilder> {
  _$DataDbListStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  DataDbListStructBuilder() {
    DataDbListStruct._initializeBuilder(this);
  }

  DataDbListStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _id = $v.id;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataDbListStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataDbListStruct;
  }

  @override
  void update(void Function(DataDbListStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataDbListStruct build() => _build();

  _$DataDbListStruct _build() {
    final _$result = _$v ??
        new _$DataDbListStruct._(
            name: name,
            id: id,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'DataDbListStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
