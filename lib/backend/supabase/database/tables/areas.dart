import '../database.dart';

class AreasTable extends SupabaseTable<AreasRow> {
  @override
  String get tableName => 'areas';

  @override
  AreasRow createRow(Map<String, dynamic> data) => AreasRow(data);
}

class AreasRow extends SupabaseDataRow {
  AreasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AreasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get regionId => getField<int>('region_id');
  set regionId(int? value) => setField<int>('region_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get deleted => getField<bool>('deleted');
  set deleted(bool? value) => setField<bool>('deleted', value);

  String? get postalSector => getField<String>('postal_sector');
  set postalSector(String? value) => setField<String>('postal_sector', value);
}
