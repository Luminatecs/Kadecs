import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PremiumRequestRecord extends FirestoreRecord {
  PremiumRequestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "requested" field.
  bool? _requested;
  bool get requested => _requested ?? false;
  bool hasRequested() => _requested != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _requested = snapshotData['requested'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('premiumRequest');

  static Stream<PremiumRequestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PremiumRequestRecord.fromSnapshot(s));

  static Future<PremiumRequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PremiumRequestRecord.fromSnapshot(s));

  static PremiumRequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PremiumRequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PremiumRequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PremiumRequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PremiumRequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PremiumRequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPremiumRequestRecordData({
  String? email,
  bool? requested,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'requested': requested,
    }.withoutNulls,
  );

  return firestoreData;
}

class PremiumRequestRecordDocumentEquality
    implements Equality<PremiumRequestRecord> {
  const PremiumRequestRecordDocumentEquality();

  @override
  bool equals(PremiumRequestRecord? e1, PremiumRequestRecord? e2) {
    return e1?.email == e2?.email && e1?.requested == e2?.requested;
  }

  @override
  int hash(PremiumRequestRecord? e) =>
      const ListEquality().hash([e?.email, e?.requested]);

  @override
  bool isValidKey(Object? o) => o is PremiumRequestRecord;
}
