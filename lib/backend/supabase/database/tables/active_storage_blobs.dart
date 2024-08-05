import '../database.dart';

class ActiveStorageBlobsTable extends SupabaseTable<ActiveStorageBlobsRow> {
  @override
  String get tableName => 'active_storage_blobs';

  @override
  ActiveStorageBlobsRow createRow(Map<String, dynamic> data) =>
      ActiveStorageBlobsRow(data);
}

class ActiveStorageBlobsRow extends SupabaseDataRow {
  ActiveStorageBlobsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ActiveStorageBlobsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get key => getField<String>('key')!;
  set key(String value) => setField<String>('key', value);

  String get filename => getField<String>('filename')!;
  set filename(String value) => setField<String>('filename', value);

  String? get contentType => getField<String>('content_type');
  set contentType(String? value) => setField<String>('content_type', value);

  String? get metadata => getField<String>('metadata');
  set metadata(String? value) => setField<String>('metadata', value);

  String get serviceName => getField<String>('service_name')!;
  set serviceName(String value) => setField<String>('service_name', value);

  int get byteSize => getField<int>('byte_size')!;
  set byteSize(int value) => setField<int>('byte_size', value);

  String? get checksum => getField<String>('checksum');
  set checksum(String? value) => setField<String>('checksum', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
