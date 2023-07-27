// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SchoolStruct extends FFFirebaseStruct {
  SchoolStruct({
    int? id,
    String? name,
    String? photo,
    String? location,
    String? description,
    String? category,
    String? gender,
    String? residency,
    String? schoolType,
    String? region,
    String? district,
    String? email,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _photo = photo,
        _location = location,
        _description = description,
        _category = category,
        _gender = gender,
        _residency = residency,
        _schoolType = schoolType,
        _region = region,
        _district = district,
        _email = email,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  set photo(String? val) => _photo = val;
  bool hasPhoto() => _photo != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;
  bool hasLocation() => _location != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;
  bool hasGender() => _gender != null;

  // "residency" field.
  String? _residency;
  String get residency => _residency ?? '';
  set residency(String? val) => _residency = val;
  bool hasResidency() => _residency != null;

  // "schoolType" field.
  String? _schoolType;
  String get schoolType => _schoolType ?? '';
  set schoolType(String? val) => _schoolType = val;
  bool hasSchoolType() => _schoolType != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  set region(String? val) => _region = val;
  bool hasRegion() => _region != null;

  // "district" field.
  String? _district;
  String get district => _district ?? '';
  set district(String? val) => _district = val;
  bool hasDistrict() => _district != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  static SchoolStruct fromMap(Map<String, dynamic> data) => SchoolStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        photo: data['photo'] as String?,
        location: data['location'] as String?,
        description: data['description'] as String?,
        category: data['category'] as String?,
        gender: data['gender'] as String?,
        residency: data['residency'] as String?,
        schoolType: data['schoolType'] as String?,
        region: data['region'] as String?,
        district: data['district'] as String?,
        email: data['email'] as String?,
      );

  static SchoolStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SchoolStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'photo': _photo,
        'location': _location,
        'description': _description,
        'category': _category,
        'gender': _gender,
        'residency': _residency,
        'schoolType': _schoolType,
        'region': _region,
        'district': _district,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'photo': serializeParam(
          _photo,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'residency': serializeParam(
          _residency,
          ParamType.String,
        ),
        'schoolType': serializeParam(
          _schoolType,
          ParamType.String,
        ),
        'region': serializeParam(
          _region,
          ParamType.String,
        ),
        'district': serializeParam(
          _district,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static SchoolStruct fromSerializableMap(Map<String, dynamic> data) =>
      SchoolStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        photo: deserializeParam(
          data['photo'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        residency: deserializeParam(
          data['residency'],
          ParamType.String,
          false,
        ),
        schoolType: deserializeParam(
          data['schoolType'],
          ParamType.String,
          false,
        ),
        region: deserializeParam(
          data['region'],
          ParamType.String,
          false,
        ),
        district: deserializeParam(
          data['district'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SchoolStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SchoolStruct &&
        id == other.id &&
        name == other.name &&
        photo == other.photo &&
        location == other.location &&
        description == other.description &&
        category == other.category &&
        gender == other.gender &&
        residency == other.residency &&
        schoolType == other.schoolType &&
        region == other.region &&
        district == other.district &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        photo,
        location,
        description,
        category,
        gender,
        residency,
        schoolType,
        region,
        district,
        email
      ]);
}

SchoolStruct createSchoolStruct({
  int? id,
  String? name,
  String? photo,
  String? location,
  String? description,
  String? category,
  String? gender,
  String? residency,
  String? schoolType,
  String? region,
  String? district,
  String? email,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SchoolStruct(
      id: id,
      name: name,
      photo: photo,
      location: location,
      description: description,
      category: category,
      gender: gender,
      residency: residency,
      schoolType: schoolType,
      region: region,
      district: district,
      email: email,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SchoolStruct? updateSchoolStruct(
  SchoolStruct? school, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    school
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSchoolStructData(
  Map<String, dynamic> firestoreData,
  SchoolStruct? school,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (school == null) {
    return;
  }
  if (school.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && school.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final schoolData = getSchoolFirestoreData(school, forFieldValue);
  final nestedData = schoolData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = school.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSchoolFirestoreData(
  SchoolStruct? school, [
  bool forFieldValue = false,
]) {
  if (school == null) {
    return {};
  }
  final firestoreData = mapToFirestore(school.toMap());

  // Add any Firestore field values
  school.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSchoolListFirestoreData(
  List<SchoolStruct>? schools,
) =>
    schools?.map((e) => getSchoolFirestoreData(e, true)).toList() ?? [];
