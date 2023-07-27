import '../database.dart';

class ShsSchoolsTable extends SupabaseTable<ShsSchoolsRow> {
  @override
  String get tableName => 'shs_schools';

  @override
  ShsSchoolsRow createRow(Map<String, dynamic> data) => ShsSchoolsRow(data);
}

class ShsSchoolsRow extends SupabaseDataRow {
  ShsSchoolsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShsSchoolsTable();

  String get sN => getField<String>('s_n')!;
  set sN(String value) => setField<String>('s_n', value);

  String? get region => getField<String>('region');
  set region(String? value) => setField<String>('region', value);

  String? get district => getField<String>('district');
  set district(String? value) => setField<String>('district', value);

  String? get schoolName => getField<String>('school_name');
  set schoolName(String? value) => setField<String>('school_name', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get residency => getField<String>('residency');
  set residency(String? value) => setField<String>('residency', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get logo => getField<String>('logo');
  set logo(String? value) => setField<String>('logo', value);

  String? get schoolImage => getField<String>('school_image');
  set schoolImage(String? value) => setField<String>('school_image', value);

  String? get studentsImage => getField<String>('students_image');
  set studentsImage(String? value) => setField<String>('students_image', value);

  String? get activity1Image => getField<String>('activity1_image');
  set activity1Image(String? value) =>
      setField<String>('activity1_image', value);

  String? get activity2Image => getField<String>('activity2_image');
  set activity2Image(String? value) =>
      setField<String>('activity2_image', value);
}
