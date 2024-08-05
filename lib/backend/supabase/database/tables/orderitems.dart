import '../database.dart';

class OrderitemsTable extends SupabaseTable<OrderitemsRow> {
  @override
  String get tableName => 'orderitems';

  @override
  OrderitemsRow createRow(Map<String, dynamic> data) => OrderitemsRow(data);
}

class OrderitemsRow extends SupabaseDataRow {
  OrderitemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderitemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

  int? get serviceitemId => getField<int>('serviceitem_id');
  set serviceitemId(int? value) => setField<int>('serviceitem_id', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  String? get employeeId => getField<String>('employee_id');
  set employeeId(String? value) => setField<String>('employee_id', value);

  bool? get isByQuote => getField<bool>('is_by_quote');
  set isByQuote(bool? value) => setField<bool>('is_by_quote', value);

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
}
