import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ElectiveRecord extends FirestoreRecord {
  ElectiveRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "electives" field.
  String? _electives;
  String get electives => _electives ?? '';
  bool hasElectives() => _electives != null;

  // "generalAims" field.
  String? _generalAims;
  String get generalAims => _generalAims ?? '';
  bool hasGeneralAims() => _generalAims != null;

  // "programsOffered" field.
  String? _programsOffered;
  String get programsOffered => _programsOffered ?? '';
  bool hasProgramsOffered() => _programsOffered != null;

  // "shs1" field.
  String? _shs1;
  String get shs1 => _shs1 ?? '';
  bool hasShs1() => _shs1 != null;

  // "shs2" field.
  String? _shs2;
  String get shs2 => _shs2 ?? '';
  bool hasShs2() => _shs2 != null;

  // "shs3" field.
  String? _shs3;
  String get shs3 => _shs3 ?? '';
  bool hasShs3() => _shs3 != null;

  // "generalArts" field.
  bool? _generalArts;
  bool get generalArts => _generalArts ?? false;
  bool hasGeneralArts() => _generalArts != null;

  // "science" field.
  bool? _science;
  bool get science => _science ?? false;
  bool hasScience() => _science != null;

  // "technical" field.
  bool? _technical;
  bool get technical => _technical ?? false;
  bool hasTechnical() => _technical != null;

  // "agriculturalScience" field.
  bool? _agriculturalScience;
  bool get agriculturalScience => _agriculturalScience ?? false;
  bool hasAgriculturalScience() => _agriculturalScience != null;

  // "visualArts" field.
  bool? _visualArts;
  bool get visualArts => _visualArts ?? false;
  bool hasVisualArts() => _visualArts != null;

  // "business" field.
  bool? _business;
  bool get business => _business ?? false;
  bool hasBusiness() => _business != null;

  // "homeEconomics" field.
  bool? _homeEconomics;
  bool get homeEconomics => _homeEconomics ?? false;
  bool hasHomeEconomics() => _homeEconomics != null;

  // "Color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _electives = snapshotData['electives'] as String?;
    _generalAims = snapshotData['generalAims'] as String?;
    _programsOffered = snapshotData['programsOffered'] as String?;
    _shs1 = snapshotData['shs1'] as String?;
    _shs2 = snapshotData['shs2'] as String?;
    _shs3 = snapshotData['shs3'] as String?;
    _generalArts = snapshotData['generalArts'] as bool?;
    _science = snapshotData['science'] as bool?;
    _technical = snapshotData['technical'] as bool?;
    _agriculturalScience = snapshotData['agriculturalScience'] as bool?;
    _visualArts = snapshotData['visualArts'] as bool?;
    _business = snapshotData['business'] as bool?;
    _homeEconomics = snapshotData['homeEconomics'] as bool?;
    _color = getSchemaColor(snapshotData['Color']);
    _icon = snapshotData['icon'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Elective');

  static Stream<ElectiveRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ElectiveRecord.fromSnapshot(s));

  static Future<ElectiveRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ElectiveRecord.fromSnapshot(s));

  static ElectiveRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ElectiveRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ElectiveRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ElectiveRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ElectiveRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ElectiveRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createElectiveRecordData({
  String? description,
  String? electives,
  String? generalAims,
  String? programsOffered,
  String? shs1,
  String? shs2,
  String? shs3,
  bool? generalArts,
  bool? science,
  bool? technical,
  bool? agriculturalScience,
  bool? visualArts,
  bool? business,
  bool? homeEconomics,
  Color? color,
  String? icon,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'electives': electives,
      'generalAims': generalAims,
      'programsOffered': programsOffered,
      'shs1': shs1,
      'shs2': shs2,
      'shs3': shs3,
      'generalArts': generalArts,
      'science': science,
      'technical': technical,
      'agriculturalScience': agriculturalScience,
      'visualArts': visualArts,
      'business': business,
      'homeEconomics': homeEconomics,
      'Color': color,
      'icon': icon,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ElectiveRecordDocumentEquality implements Equality<ElectiveRecord> {
  const ElectiveRecordDocumentEquality();

  @override
  bool equals(ElectiveRecord? e1, ElectiveRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.electives == e2?.electives &&
        e1?.generalAims == e2?.generalAims &&
        e1?.programsOffered == e2?.programsOffered &&
        e1?.shs1 == e2?.shs1 &&
        e1?.shs2 == e2?.shs2 &&
        e1?.shs3 == e2?.shs3 &&
        e1?.generalArts == e2?.generalArts &&
        e1?.science == e2?.science &&
        e1?.technical == e2?.technical &&
        e1?.agriculturalScience == e2?.agriculturalScience &&
        e1?.visualArts == e2?.visualArts &&
        e1?.business == e2?.business &&
        e1?.homeEconomics == e2?.homeEconomics &&
        e1?.color == e2?.color &&
        e1?.icon == e2?.icon &&
        e1?.image == e2?.image;
  }

  @override
  int hash(ElectiveRecord? e) => const ListEquality().hash([
        e?.description,
        e?.electives,
        e?.generalAims,
        e?.programsOffered,
        e?.shs1,
        e?.shs2,
        e?.shs3,
        e?.generalArts,
        e?.science,
        e?.technical,
        e?.agriculturalScience,
        e?.visualArts,
        e?.business,
        e?.homeEconomics,
        e?.color,
        e?.icon,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is ElectiveRecord;
}
