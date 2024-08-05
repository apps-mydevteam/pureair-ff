import '../database.dart';

class ActiveStorageVariantRecordsTable
    extends SupabaseTable<ActiveStorageVariantRecordsRow> {
  @override
  String get tableName => 'active_storage_variant_records';

  @override
  ActiveStorageVariantRecordsRow createRow(Map<String, dynamic> data) =>
      ActiveStorageVariantRecordsRow(data);
}

class ActiveStorageVariantRecordsRow extends SupabaseDataRow {
  ActiveStorageVariantRecordsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ActiveStorageVariantRecordsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get blobId => getField<int>('blob_id')!;
  set blobId(int value) => setField<int>('blob_id', value);

  String get variationDigest => getField<String>('variation_digest')!;
  set variationDigest(String value) =>
      setField<String>('variation_digest', value);
}
