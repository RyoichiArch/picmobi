// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoppingcart_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShoppingcartRecord> _$shoppingcartRecordSerializer =
    new _$ShoppingcartRecordSerializer();

class _$ShoppingcartRecordSerializer
    implements StructuredSerializer<ShoppingcartRecord> {
  @override
  final Iterable<Type> types = const [ShoppingcartRecord, _$ShoppingcartRecord];
  @override
  final String wireName = 'ShoppingcartRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ShoppingcartRecord object,
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
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.shopname;
    if (value != null) {
      result
        ..add('shopname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.camera;
    if (value != null) {
      result
        ..add('camera')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  ShoppingcartRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShoppingcartRecordBuilder();

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
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'shopname':
          result.shopname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'camera':
          result.camera = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'created_by':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$ShoppingcartRecord extends ShoppingcartRecord {
  @override
  final String? name;
  @override
  final double? price;
  @override
  final double? amount;
  @override
  final String? shopname;
  @override
  final String? camera;
  @override
  final DateTime? createdAt;
  @override
  final DocumentReference<Object?>? createdBy;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ShoppingcartRecord(
          [void Function(ShoppingcartRecordBuilder)? updates]) =>
      (new ShoppingcartRecordBuilder()..update(updates))._build();

  _$ShoppingcartRecord._(
      {this.name,
      this.price,
      this.amount,
      this.shopname,
      this.camera,
      this.createdAt,
      this.createdBy,
      this.ffRef})
      : super._();

  @override
  ShoppingcartRecord rebuild(
          void Function(ShoppingcartRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShoppingcartRecordBuilder toBuilder() =>
      new ShoppingcartRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShoppingcartRecord &&
        name == other.name &&
        price == other.price &&
        amount == other.amount &&
        shopname == other.shopname &&
        camera == other.camera &&
        createdAt == other.createdAt &&
        createdBy == other.createdBy &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), price.hashCode),
                            amount.hashCode),
                        shopname.hashCode),
                    camera.hashCode),
                createdAt.hashCode),
            createdBy.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShoppingcartRecord')
          ..add('name', name)
          ..add('price', price)
          ..add('amount', amount)
          ..add('shopname', shopname)
          ..add('camera', camera)
          ..add('createdAt', createdAt)
          ..add('createdBy', createdBy)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ShoppingcartRecordBuilder
    implements Builder<ShoppingcartRecord, ShoppingcartRecordBuilder> {
  _$ShoppingcartRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _shopname;
  String? get shopname => _$this._shopname;
  set shopname(String? shopname) => _$this._shopname = shopname;

  String? _camera;
  String? get camera => _$this._camera;
  set camera(String? camera) => _$this._camera = camera;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DocumentReference<Object?>? _createdBy;
  DocumentReference<Object?>? get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object?>? createdBy) =>
      _$this._createdBy = createdBy;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ShoppingcartRecordBuilder() {
    ShoppingcartRecord._initializeBuilder(this);
  }

  ShoppingcartRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _amount = $v.amount;
      _shopname = $v.shopname;
      _camera = $v.camera;
      _createdAt = $v.createdAt;
      _createdBy = $v.createdBy;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShoppingcartRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShoppingcartRecord;
  }

  @override
  void update(void Function(ShoppingcartRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShoppingcartRecord build() => _build();

  _$ShoppingcartRecord _build() {
    final _$result = _$v ??
        new _$ShoppingcartRecord._(
            name: name,
            price: price,
            amount: amount,
            shopname: shopname,
            camera: camera,
            createdAt: createdAt,
            createdBy: createdBy,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
