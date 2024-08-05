import '../database.dart';

class HolidaysTable extends SupabaseTable<HolidaysRow> {
  @override
  String get tableName => 'holidays';

  @override
  HolidaysRow createRow(Map<String, dynamic> data) => HolidaysRow(data);
}

class HolidaysRow extends SupabaseDataRow {
  HolidaysRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HolidaysTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get deleted => getField<bool>('deleted');
  set deleted(bool? value) => setField<bool>('deleted', value);
}
