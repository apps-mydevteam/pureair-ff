import '../database.dart';

class TeamregionsTable extends SupabaseTable<TeamregionsRow> {
  @override
  String get tableName => 'teamregions';

  @override
  TeamregionsRow createRow(Map<String, dynamic> data) => TeamregionsRow(data);
}

class TeamregionsRow extends SupabaseDataRow {
  TeamregionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TeamregionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get regionId => getField<int>('region_id');
  set regionId(int? value) => setField<int>('region_id', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get deleted => getField<bool>('deleted');
  set deleted(bool? value) => setField<bool>('deleted', value);
}
