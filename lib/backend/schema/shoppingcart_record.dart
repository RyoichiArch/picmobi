import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShoppingcartRecord extends FirestoreRecord {
  ShoppingcartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "shopname" field.
  String? _shopname;
  String get shopname => _shopname ?? '';
  bool hasShopname() => _shopname != null;

  // "camera" field.
  String? _camera;
  String get camera => _camera ?? '';
  bool hasCamera() => _camera != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "onprocess" field.
  String? _onprocess;
  String get onprocess => _onprocess ?? '';
  bool hasOnprocess() => _onprocess != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "schedule" field.
  String? _schedule;
  String get schedule => _schedule ?? '';
  bool hasSchedule() => _schedule != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _shopname = snapshotData['shopname'] as String?;
    _camera = snapshotData['camera'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _onprocess = snapshotData['onprocess'] as String?;
    _price = snapshotData['price'] as String?;
    _schedule = snapshotData['schedule'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shoppingcart');

  static Stream<ShoppingcartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShoppingcartRecord.fromSnapshot(s));

  static Future<ShoppingcartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShoppingcartRecord.fromSnapshot(s));

  static ShoppingcartRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShoppingcartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShoppingcartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShoppingcartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShoppingcartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShoppingcartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShoppingcartRecordData({
  String? name,
  double? amount,
  String? shopname,
  String? camera,
  DateTime? createdAt,
  DocumentReference? createdBy,
  String? onprocess,
  String? price,
  String? schedule,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'amount': amount,
      'shopname': shopname,
      'camera': camera,
      'created_at': createdAt,
      'created_by': createdBy,
      'onprocess': onprocess,
      'price': price,
      'schedule': schedule,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShoppingcartRecordDocumentEquality
    implements Equality<ShoppingcartRecord> {
  const ShoppingcartRecordDocumentEquality();

  @override
  bool equals(ShoppingcartRecord? e1, ShoppingcartRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.amount == e2?.amount &&
        e1?.shopname == e2?.shopname &&
        e1?.camera == e2?.camera &&
        e1?.createdAt == e2?.createdAt &&
        e1?.createdBy == e2?.createdBy &&
        e1?.onprocess == e2?.onprocess &&
        e1?.price == e2?.price &&
        e1?.schedule == e2?.schedule;
  }

  @override
  int hash(ShoppingcartRecord? e) => const ListEquality().hash([
        e?.name,
        e?.amount,
        e?.shopname,
        e?.camera,
        e?.createdAt,
        e?.createdBy,
        e?.onprocess,
        e?.price,
        e?.schedule
      ]);

  @override
  bool isValidKey(Object? o) => o is ShoppingcartRecord;
}
