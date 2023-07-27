import '../database.dart';

class ShsElectivesTable extends SupabaseTable<ShsElectivesRow> {
  @override
  String get tableName => 'shs_electives';

  @override
  ShsElectivesRow createRow(Map<String, dynamic> data) => ShsElectivesRow(data);
}

class ShsElectivesRow extends SupabaseDataRow {
  ShsElectivesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShsElectivesTable();

  String get electives => getField<String>('electives')!;
  set electives(String value) => setField<String>('electives', value);

  String? get programsOffered => getField<String>('programs_offered');
  set programsOffered(String? value) =>
      setField<String>('programs_offered', value);

  String? get shs1 => getField<String>('shs1');
  set shs1(String? value) => setField<String>('shs1', value);

  String? get generalAims => getField<String>('general_aims');
  set generalAims(String? value) => setField<String>('general_aims', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get shs2 => getField<String>('shs2');
  set shs2(String? value) => setField<String>('shs2', value);

  String? get shs3 => getField<String>('shs3');
  set shs3(String? value) => setField<String>('shs3', value);

  bool? get visualArts => getField<bool>('visual_arts');
  set visualArts(bool? value) => setField<bool>('visual_arts', value);

  bool? get agriculturalScience => getField<bool>('agricultural_science');
  set agriculturalScience(bool? value) =>
      setField<bool>('agricultural_science', value);

  bool? get business => getField<bool>('business');
  set business(bool? value) => setField<bool>('business', value);

  bool? get generalArts => getField<bool>('general_arts');
  set generalArts(bool? value) => setField<bool>('general_arts', value);

  bool? get technical => getField<bool>('technical');
  set technical(bool? value) => setField<bool>('technical', value);

  bool? get science => getField<bool>('science');
  set science(bool? value) => setField<bool>('science', value);

  bool? get homeEconomics => getField<bool>('home_economics');
  set homeEconomics(bool? value) => setField<bool>('home_economics', value);

  String? get photo => getField<String>('photo');
  set photo(String? value) => setField<String>('photo', value);
}
