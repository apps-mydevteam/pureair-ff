import '../database.dart';

class ServiceitemsTable extends SupabaseTable<ServiceitemsRow> {
  @override
  String get tableName => 'serviceitems';

  @override
  ServiceitemsRow createRow(Map<String, dynamic> data) => ServiceitemsRow(data);
}

class ServiceitemsRow extends SupabaseDataRow {
  ServiceitemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceitemsTable();

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

  int? get serviceId => getField<int>('service_id');
  set serviceId(int? value) => setField<int>('service_id', value);

  int? get servicecontractId => getField<int>('servicecontract_id');
  set servicecontractId(int? value) =>
      setField<int>('servicecontract_id', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  bool? get isByQuote => getField<bool>('is_by_quote');
  set isByQuote(bool? value) => setField<bool>('is_by_quote', value);

  bool? get visibleToCustomer => getField<bool>('visible_to_customer');
  set visibleToCustomer(bool? value) =>
      setField<bool>('visible_to_customer', value);

  bool get editable => getField<bool>('editable')!;
  set editable(bool value) => setField<bool>('editable', value);

  bool get visibleInContracts => getField<bool>('visible_in_contracts')!;
  set visibleInContracts(bool value) =>
      setField<bool>('visible_in_contracts', value);
}
