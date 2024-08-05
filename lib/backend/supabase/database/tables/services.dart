import '../database.dart';

class ServicesTable extends SupabaseTable<ServicesRow> {
  @override
  String get tableName => 'services';

  @override
  ServicesRow createRow(Map<String, dynamic> data) => ServicesRow(data);
}

class ServicesRow extends SupabaseDataRow {
  ServicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get durationMinute => getField<int>('duration_minute');
  set durationMinute(int? value) => setField<int>('duration_minute', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get deleted => getField<bool>('deleted');
  set deleted(bool? value) => setField<bool>('deleted', value);

  bool? get hasContractOption => getField<bool>('has_contract_option');
  set hasContractOption(bool? value) =>
      setField<bool>('has_contract_option', value);

  bool? get isByQuote => getField<bool>('is_by_quote');
  set isByQuote(bool? value) => setField<bool>('is_by_quote', value);

  bool? get visibleToCustomer => getField<bool>('visible_to_customer');
  set visibleToCustomer(bool? value) =>
      setField<bool>('visible_to_customer', value);

  bool get editable => getField<bool>('editable')!;
  set editable(bool value) => setField<bool>('editable', value);
}
