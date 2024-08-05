import '../database.dart';

class ArInternalMetadataTable extends SupabaseTable<ArInternalMetadataRow> {
  @override
  String get tableName => 'ar_internal_metadata';

  @override
  ArInternalMetadataRow createRow(Map<String, dynamic> data) =>
      ArInternalMetadataRow(data);
}

class ArInternalMetadataRow extends SupabaseDataRow {
  ArInternalMetadataRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ArInternalMetadataTable();

  String get key => getField<String>('key')!;
  set key(String value) => setField<String>('key', value);

  String? get value => getField<String>('value');
  set value(String? value) => setField<String>('value', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
