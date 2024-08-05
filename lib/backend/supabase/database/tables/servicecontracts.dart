import '../database.dart';

class ServicecontractsTable extends SupabaseTable<ServicecontractsRow> {
  @override
  String get tableName => 'servicecontracts';

  @override
  ServicecontractsRow createRow(Map<String, dynamic> data) =>
      ServicecontractsRow(data);
}

class ServicecontractsRow extends SupabaseDataRow {
  ServicecontractsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServicecontractsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get duration => getField<int>('duration');
  set duration(int? value) => setField<int>('duration', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get deleted => getField<bool>('deleted');
  set deleted(bool? value) => setField<bool>('deleted', value);
}
