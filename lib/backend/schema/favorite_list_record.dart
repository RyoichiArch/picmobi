import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoriteListRecord extends FirestoreRecord {
  FavoriteListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "goods" field.
  String? _goods;
  String get goods => _goods ?? '';
  bool hasGoods() => _goods != null;

  void _initializeFields() {
    _goods = snapshotData['goods'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favorite_list');

  static Stream<FavoriteListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavoriteListRecord.fromSnapshot(s));

  static Future<FavoriteListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FavoriteListRecord.fromSnapshot(s));

  static FavoriteListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavoriteListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavoriteListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavoriteListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavoriteListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavoriteListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavoriteListRecordData({
  String? goods,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'goods': goods,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavoriteListRecordDocumentEquality
    implements Equality<FavoriteListRecord> {
  const FavoriteListRecordDocumentEquality();

  @override
  bool equals(FavoriteListRecord? e1, FavoriteListRecord? e2) {
    return e1?.goods == e2?.goods;
  }

  @override
  int hash(FavoriteListRecord? e) => const ListEquality().hash([e?.goods]);

  @override
  bool isValidKey(Object? o) => o is FavoriteListRecord;
}
