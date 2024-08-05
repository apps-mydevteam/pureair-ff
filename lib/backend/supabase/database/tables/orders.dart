import '../database.dart';

class OrdersTable extends SupabaseTable<OrdersRow> {
  @override
  String get tableName => 'orders';

  @override
  OrdersRow createRow(Map<String, dynamic> data) => OrdersRow(data);
}

class OrdersRow extends SupabaseDataRow {
  OrdersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get customerId => getField<String>('customer_id');
  set customerId(String? value) => setField<String>('customer_id', value);

  int? get addressId => getField<int>('address_id');
  set addressId(int? value) => setField<int>('address_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double get discountAmount => getField<double>('discount_amount')!;
  set discountAmount(double value) =>
      setField<double>('discount_amount', value);

  double get discountPercent => getField<double>('discount_percent')!;
  set discountPercent(double value) =>
      setField<double>('discount_percent', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  int? get promoId => getField<int>('promo_id');
  set promoId(int? value) => setField<int>('promo_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get deleted => getField<bool>('deleted');
  set deleted(bool? value) => setField<bool>('deleted', value);

  DateTime? get preferredTimeslot => getField<DateTime>('preferred_timeslot');
  set preferredTimeslot(DateTime? value) =>
      setField<DateTime>('preferred_timeslot', value);

  double? get estimatedDurationMinute =>
      getField<double>('estimated_duration_minute');
  set estimatedDurationMinute(double? value) =>
      setField<double>('estimated_duration_minute', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  DateTime? get scheduledTimeslot => getField<DateTime>('scheduled_timeslot');
  set scheduledTimeslot(DateTime? value) =>
      setField<DateTime>('scheduled_timeslot', value);

  double? get scheduledDurationMinute =>
      getField<double>('scheduled_duration_minute');
  set scheduledDurationMinute(double? value) =>
      setField<double>('scheduled_duration_minute', value);

  String? get adminNotes => getField<String>('admin_notes');
  set adminNotes(String? value) => setField<String>('admin_notes', value);

  DateTime? get lastAutoAssignedAt =>
      getField<DateTime>('last_auto_assigned_at');
  set lastAutoAssignedAt(DateTime? value) =>
      setField<DateTime>('last_auto_assigned_at', value);

  int? get contractId => getField<int>('contract_id');
  set contractId(int? value) => setField<int>('contract_id', value);

  int? get customeraddressId => getField<int>('customeraddress_id');
  set customeraddressId(int? value) =>
      setField<int>('customeraddress_id', value);

  String? get cancellationReason => getField<String>('cancellation_reason');
  set cancellationReason(String? value) =>
      setField<String>('cancellation_reason', value);

  double? get subtotal => getField<double>('subtotal');
  set subtotal(double? value) => setField<double>('subtotal', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get refNumber => getField<String>('ref_number');
  set refNumber(String? value) => setField<String>('ref_number', value);

  int? get gst => getField<int>('gst');
  set gst(int? value) => setField<int>('gst', value);

  double? get gstAmount => getField<double>('gst_amount');
  set gstAmount(double? value) => setField<double>('gst_amount', value);
}
