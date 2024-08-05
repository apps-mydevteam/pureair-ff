import '../database.dart';

class InvoicesTable extends SupabaseTable<InvoicesRow> {
  @override
  String get tableName => 'invoices';

  @override
  InvoicesRow createRow(Map<String, dynamic> data) => InvoicesRow(data);
}

class InvoicesRow extends SupabaseDataRow {
  InvoicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InvoicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

  double? get discountAmount => getField<double>('discount_amount');
  set discountAmount(double? value) =>
      setField<double>('discount_amount', value);

  double? get discountPercent => getField<double>('discount_percent');
  set discountPercent(double? value) =>
      setField<double>('discount_percent', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  bool? get isPaid => getField<bool>('is_paid');
  set isPaid(bool? value) => setField<bool>('is_paid', value);

  DateTime? get paidDate => getField<DateTime>('paid_date');
  set paidDate(DateTime? value) => setField<DateTime>('paid_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get deleted => getField<bool>('deleted');
  set deleted(bool? value) => setField<bool>('deleted', value);

  double? get gst => getField<double>('gst');
  set gst(double? value) => setField<double>('gst', value);

  int? get contractId => getField<int>('contract_id');
  set contractId(int? value) => setField<int>('contract_id', value);

  String? get paymentMethod => getField<String>('payment_method');
  set paymentMethod(String? value) => setField<String>('payment_method', value);
}
