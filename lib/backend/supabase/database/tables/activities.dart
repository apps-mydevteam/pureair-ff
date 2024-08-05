import '../database.dart';

class ActivitiesTable extends SupabaseTable<ActivitiesRow> {
  @override
  String get tableName => 'activities';

  @override
  ActivitiesRow createRow(Map<String, dynamic> data) => ActivitiesRow(data);
}

class ActivitiesRow extends SupabaseDataRow {
  ActivitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ActivitiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get trackableType => getField<String>('trackable_type');
  set trackableType(String? value) => setField<String>('trackable_type', value);

  int? get trackableId => getField<int>('trackable_id');
  set trackableId(int? value) => setField<int>('trackable_id', value);

  String? get ownerType => getField<String>('owner_type');
  set ownerType(String? value) => setField<String>('owner_type', value);

  int? get ownerId => getField<int>('owner_id');
  set ownerId(int? value) => setField<int>('owner_id', value);

  String? get key => getField<String>('key');
  set key(String? value) => setField<String>('key', value);

  String? get parameters => getField<String>('parameters');
  set parameters(String? value) => setField<String>('parameters', value);

  String? get recipientType => getField<String>('recipient_type');
  set recipientType(String? value) => setField<String>('recipient_type', value);

  int? get recipientId => getField<int>('recipient_id');
  set recipientId(int? value) => setField<int>('recipient_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
