import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShsSchoolsRecord extends FirestoreRecord {
  ShsSchoolsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "s_n" field.
  String? _sN;
  String get sN => _sN ?? '';
  bool hasSN() => _sN != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "district" field.
  String? _district;
  String get district => _district ?? '';
  bool hasDistrict() => _district != null;

  // "school_name" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "residency" field.
  String? _residency;
  String get residency => _residency ?? '';
  bool hasResidency() => _residency != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "school_image" field.
  String? _schoolImage;
  String get schoolImage => _schoolImage ?? '';
  bool hasSchoolImage() => _schoolImage != null;

  // "students_image" field.
  String? _studentsImage;
  String get studentsImage => _studentsImage ?? '';
  bool hasStudentsImage() => _studentsImage != null;

  // "activity1_image" field.
  String? _activity1Image;
  String get activity1Image => _activity1Image ?? '';
  bool hasActivity1Image() => _activity1Image != null;

  // "activity2_image" field.
  String? _activity2Image;
  String get activity2Image => _activity2Image ?? '';
  bool hasActivity2Image() => _activity2Image != null;

  void _initializeFields() {
    _sN = snapshotData['s_n'] as String?;
    _region = snapshotData['region'] as String?;
    _district = snapshotData['district'] as String?;
    _schoolName = snapshotData['school_name'] as String?;
    _category = snapshotData['category'] as String?;
    _location = snapshotData['location'] as String?;
    _gender = snapshotData['gender'] as String?;
    _residency = snapshotData['residency'] as String?;
    _email = snapshotData['email'] as String?;
    _logo = snapshotData['logo'] as String?;
    _schoolImage = snapshotData['school_image'] as String?;
    _studentsImage = snapshotData['students_image'] as String?;
    _activity1Image = snapshotData['activity1_image'] as String?;
    _activity2Image = snapshotData['activity2_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shs_schools');

  static Stream<ShsSchoolsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShsSchoolsRecord.fromSnapshot(s));

  static Future<ShsSchoolsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShsSchoolsRecord.fromSnapshot(s));

  static ShsSchoolsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShsSchoolsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShsSchoolsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShsSchoolsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShsSchoolsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShsSchoolsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShsSchoolsRecordData({
  String? sN,
  String? region,
  String? district,
  String? schoolName,
  String? category,
  String? location,
  String? gender,
  String? residency,
  String? email,
  String? logo,
  String? schoolImage,
  String? studentsImage,
  String? activity1Image,
  String? activity2Image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      's_n': sN,
      'region': region,
      'district': district,
      'school_name': schoolName,
      'category': category,
      'location': location,
      'gender': gender,
      'residency': residency,
      'email': email,
      'logo': logo,
      'school_image': schoolImage,
      'students_image': studentsImage,
      'activity1_image': activity1Image,
      'activity2_image': activity2Image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShsSchoolsRecordDocumentEquality implements Equality<ShsSchoolsRecord> {
  const ShsSchoolsRecordDocumentEquality();

  @override
  bool equals(ShsSchoolsRecord? e1, ShsSchoolsRecord? e2) {
    return e1?.sN == e2?.sN &&
        e1?.region == e2?.region &&
        e1?.district == e2?.district &&
        e1?.schoolName == e2?.schoolName &&
        e1?.category == e2?.category &&
        e1?.location == e2?.location &&
        e1?.gender == e2?.gender &&
        e1?.residency == e2?.residency &&
        e1?.email == e2?.email &&
        e1?.logo == e2?.logo &&
        e1?.schoolImage == e2?.schoolImage &&
        e1?.studentsImage == e2?.studentsImage &&
        e1?.activity1Image == e2?.activity1Image &&
        e1?.activity2Image == e2?.activity2Image;
  }

  @override
  int hash(ShsSchoolsRecord? e) => const ListEquality().hash([
        e?.sN,
        e?.region,
        e?.district,
        e?.schoolName,
        e?.category,
        e?.location,
        e?.gender,
        e?.residency,
        e?.email,
        e?.logo,
        e?.schoolImage,
        e?.studentsImage,
        e?.activity1Image,
        e?.activity2Image
      ]);

  @override
  bool isValidKey(Object? o) => o is ShsSchoolsRecord;
}
