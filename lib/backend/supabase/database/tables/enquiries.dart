import '../database.dart';

class EnquiriesTable extends SupabaseTable<EnquiriesRow> {
  @override
  String get tableName => 'enquiries';

  @override
  EnquiriesRow createRow(Map<String, dynamic> data) => EnquiriesRow(data);
}

class EnquiriesRow extends SupabaseDataRow {
  EnquiriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EnquiriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  bool get deleted => getField<bool>('deleted')!;
  set deleted(bool value) => setField<bool>('deleted', value);

  String? get customerId => getField<String>('customer_id');
  set customerId(String? value) => setField<String>('customer_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool get isRead => getField<bool>('is_read')!;
  set isRead(bool value) => setField<bool>('is_read', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);
}
