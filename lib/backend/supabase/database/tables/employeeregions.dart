import '../database.dart';

class EmployeeregionsTable extends SupabaseTable<EmployeeregionsRow> {
  @override
  String get tableName => 'employeeregions';

  @override
  EmployeeregionsRow createRow(Map<String, dynamic> data) =>
      EmployeeregionsRow(data);
}

class EmployeeregionsRow extends SupabaseDataRow {
  EmployeeregionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmployeeregionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get regionId => getField<int>('region_id');
  set regionId(int? value) => setField<int>('region_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get deleted => getField<bool>('deleted');
  set deleted(bool? value) => setField<bool>('deleted', value);

  String? get employeeId => getField<String>('employee_id');
  set employeeId(String? value) => setField<String>('employee_id', value);

  bool? get activated => getField<bool>('activated');
  set activated(bool? value) => setField<bool>('activated', value);
}
