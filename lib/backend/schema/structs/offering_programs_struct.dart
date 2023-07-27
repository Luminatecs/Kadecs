// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfferingProgramsStruct extends FFFirebaseStruct {
  OfferingProgramsStruct({
    String? science,
    String? visualArt,
    String? homeEconomics,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _science = science,
        _visualArt = visualArt,
        _homeEconomics = homeEconomics,
        super(firestoreUtilData);

  // "Science" field.
  String? _science;
  String get science => _science ?? '';
  set science(String? val) => _science = val;
  bool hasScience() => _science != null;

  // "Visual_Art" field.
  String? _visualArt;
  String get visualArt => _visualArt ?? '';
  set visualArt(String? val) => _visualArt = val;
  bool hasVisualArt() => _visualArt != null;

  // "Home_Economics" field.
  String? _homeEconomics;
  String get homeEconomics => _homeEconomics ?? '';
  set homeEconomics(String? val) => _homeEconomics = val;
  bool hasHomeEconomics() => _homeEconomics != null;

  static OfferingProgramsStruct fromMap(Map<String, dynamic> data) =>
      OfferingProgramsStruct(
        science: data['Science'] as String?,
        visualArt: data['Visual_Art'] as String?,
        homeEconomics: data['Home_Economics'] as String?,
      );

  static OfferingProgramsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? OfferingProgramsStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'Science': _science,
        'Visual_Art': _visualArt,
        'Home_Economics': _homeEconomics,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Science': serializeParam(
          _science,
          ParamType.String,
        ),
        'Visual_Art': serializeParam(
          _visualArt,
          ParamType.String,
        ),
        'Home_Economics': serializeParam(
          _homeEconomics,
          ParamType.String,
        ),
      }.withoutNulls;

  static OfferingProgramsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OfferingProgramsStruct(
        science: deserializeParam(
          data['Science'],
          ParamType.String,
          false,
        ),
        visualArt: deserializeParam(
          data['Visual_Art'],
          ParamType.String,
          false,
        ),
        homeEconomics: deserializeParam(
          data['Home_Economics'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OfferingProgramsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OfferingProgramsStruct &&
        science == other.science &&
        visualArt == other.visualArt &&
        homeEconomics == other.homeEconomics;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([science, visualArt, homeEconomics]);
}

OfferingProgramsStruct createOfferingProgramsStruct({
  String? science,
  String? visualArt,
  String? homeEconomics,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OfferingProgramsStruct(
      science: science,
      visualArt: visualArt,
      homeEconomics: homeEconomics,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OfferingProgramsStruct? updateOfferingProgramsStruct(
  OfferingProgramsStruct? offeringPrograms, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    offeringPrograms
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOfferingProgramsStructData(
  Map<String, dynamic> firestoreData,
  OfferingProgramsStruct? offeringPrograms,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (offeringPrograms == null) {
    return;
  }
  if (offeringPrograms.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && offeringPrograms.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final offeringProgramsData =
      getOfferingProgramsFirestoreData(offeringPrograms, forFieldValue);
  final nestedData =
      offeringProgramsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = offeringPrograms.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOfferingProgramsFirestoreData(
  OfferingProgramsStruct? offeringPrograms, [
  bool forFieldValue = false,
]) {
  if (offeringPrograms == null) {
    return {};
  }
  final firestoreData = mapToFirestore(offeringPrograms.toMap());

  // Add any Firestore field values
  offeringPrograms.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOfferingProgramsListFirestoreData(
  List<OfferingProgramsStruct>? offeringProgramss,
) =>
    offeringProgramss
        ?.map((e) => getOfferingProgramsFirestoreData(e, true))
        .toList() ??
    [];
