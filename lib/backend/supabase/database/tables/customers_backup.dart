import '../database.dart';

class CustomersBackupTable extends SupabaseTable<CustomersBackupRow> {
  @override
  String get tableName => 'customers_backup';

  @override
  CustomersBackupRow createRow(Map<String, dynamic> data) =>
      CustomersBackupRow(data);
}

class CustomersBackupRow extends SupabaseDataRow {
  CustomersBackupRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CustomersBackupTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
