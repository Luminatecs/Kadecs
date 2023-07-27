import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get school => getField<String>('school');
  set school(String? value) => setField<String>('school', value);

  String? get schoolLevel => getField<String>('school_level');
  set schoolLevel(String? value) => setField<String>('school_level', value);

  String? get formLevel => getField<String>('form_level');
  set formLevel(String? value) => setField<String>('form_level', value);

  String? get hobbies => getField<String>('hobbies');
  set hobbies(String? value) => setField<String>('hobbies', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  List<String> get favSchools => getListField<String>('fav_schools');
  set favSchools(List<String>? value) =>
      setListField<String>('fav_schools', value);
}
