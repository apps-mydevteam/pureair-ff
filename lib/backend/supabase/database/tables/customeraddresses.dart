import '../database.dart';

class CustomeraddressesTable extends SupabaseTable<CustomeraddressesRow> {
  @override
  String get tableName => 'customeraddresses';

  @override
  CustomeraddressesRow createRow(Map<String, dynamic> data) =>
      CustomeraddressesRow(data);
}

class CustomeraddressesRow extends SupabaseDataRow {
  CustomeraddressesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CustomeraddressesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get customerId => getField<String>('customer_id');
  set customerId(String? value) => setField<String>('customer_id', value);

  int? get addressId => getField<int>('address_id');
  set addressId(int? value) => setField<int>('address_id', value);

  bool get deleted => getField<bool>('deleted')!;
  set deleted(bool value) => setField<bool>('deleted', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  bool get isPrimary => getField<bool>('is_primary')!;
  set isPrimary(bool value) => setField<bool>('is_primary', value);

  String? get unitLevel => getField<String>('unit_level');
  set unitLevel(String? value) => setField<String>('unit_level', value);

  String? get unitNumber => getField<String>('unit_number');
  set unitNumber(String? value) => setField<String>('unit_number', value);

  bool get requiresLadder => getField<bool>('requires_ladder')!;
  set requiresLadder(bool value) => setField<bool>('requires_ladder', value);

  String? get postcode => getField<String>('postcode');
  set postcode(String? value) => setField<String>('postcode', value);

  int? get areaId => getField<int>('area_id');
  set areaId(int? value) => setField<int>('area_id', value);

  int? get regionId => getField<int>('region_id');
  set regionId(int? value) => setField<int>('region_id', value);
}
