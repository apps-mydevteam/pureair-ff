import '../database.dart';

class ContractitemsTable extends SupabaseTable<ContractitemsRow> {
  @override
  String get tableName => 'contractitems';

  @override
  ContractitemsRow createRow(Map<String, dynamic> data) =>
      ContractitemsRow(data);
}

class ContractitemsRow extends SupabaseDataRow {
  ContractitemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContractitemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get deleted => getField<bool>('deleted');
  set deleted(bool? value) => setField<bool>('deleted', value);

  double get discountAmount => getField<double>('discount_amount')!;
  set discountAmount(double value) =>
      setField<double>('discount_amount', value);

  double get discountPercent => getField<double>('discount_percent')!;
  set discountPercent(double value) =>
      setField<double>('discount_percent', value);

  int? get contractId => getField<int>('contract_id');
  set contractId(int? value) => setField<int>('contract_id', value);

  int? get totalServiceInYear => getField<int>('total_service_in_year');
  set totalServiceInYear(int? value) =>
      setField<int>('total_service_in_year', value);

  int? get usedQuantity => getField<int>('used_quantity');
  set usedQuantity(int? value) => setField<int>('used_quantity', value);

  int? get serviceitemId => getField<int>('serviceitem_id');
  set serviceitemId(int? value) => setField<int>('serviceitem_id', value);
}
