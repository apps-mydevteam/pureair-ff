import '../database.dart';

class ActiveStorageAttachmentsTable
    extends SupabaseTable<ActiveStorageAttachmentsRow> {
  @override
  String get tableName => 'active_storage_attachments';

  @override
  ActiveStorageAttachmentsRow createRow(Map<String, dynamic> data) =>
      ActiveStorageAttachmentsRow(data);
}

class ActiveStorageAttachmentsRow extends SupabaseDataRow {
  ActiveStorageAttachmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ActiveStorageAttachmentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get recordType => getField<String>('record_type')!;
  set recordType(String value) => setField<String>('record_type', value);

  int get recordId => getField<int>('record_id')!;
  set recordId(int value) => setField<int>('record_id', value);

  int get blobId => getField<int>('blob_id')!;
  set blobId(int value) => setField<int>('blob_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
