import '../database.dart';

class ContractsTable extends SupabaseTable<ContractsRow> {
  @override
  String get tableName => 'contracts';

  @override
  ContractsRow createRow(Map<String, dynamic> data) => ContractsRow(data);
}

class ContractsRow extends SupabaseDataRow {
  ContractsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContractsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  String? get customerId => getField<String>('customer_id');
  set customerId(String? value) => setField<String>('customer_id', value);

  DateTime? get signedOn => getField<DateTime>('signed_on');
  set signedOn(DateTime? value) => setField<DateTime>('signed_on', value);

  bool? get approved => getField<bool>('approved');
  set approved(bool? value) => setField<bool>('approved', value);

  DateTime? get approvedOn => getField<DateTime>('approved_on');
  set approvedOn(DateTime? value) => setField<DateTime>('approved_on', value);

  String? get approvedById => getField<String>('approved_by_id');
  set approvedById(String? value) => setField<String>('approved_by_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get deleted => getField<bool>('deleted');
  set deleted(bool? value) => setField<bool>('deleted', value);

  int? get servicesAmount => getField<int>('services_amount');
  set servicesAmount(int? value) => setField<int>('services_amount', value);

  int? get servicesUsed => getField<int>('services_used');
  set servicesUsed(int? value) => setField<int>('services_used', value);

  int? get serviceitemId => getField<int>('serviceitem_id');
  set serviceitemId(int? value) => setField<int>('serviceitem_id', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  int? get totalServiceInYear => getField<int>('total_service_in_year');
  set totalServiceInYear(int? value) =>
      setField<int>('total_service_in_year', value);

  double? get subtotal => getField<double>('subtotal');
  set subtotal(double? value) => setField<double>('subtotal', value);

  String? get contractBody => getField<String>('contract_body');
  set contractBody(String? value) => setField<String>('contract_body', value);

  double? get gst => getField<double>('gst');
  set gst(double? value) => setField<double>('gst', value);

  int? get customeraddressId => getField<int>('customeraddress_id');
  set customeraddressId(int? value) =>
      setField<int>('customeraddress_id', value);

  double? get discountAmount => getField<double>('discount_amount');
  set discountAmount(double? value) =>
      setField<double>('discount_amount', value);

  double? get discountPercent => getField<double>('discount_percent');
  set discountPercent(double? value) =>
      setField<double>('discount_percent', value);

  String? get refNumber => getField<String>('ref_number');
  set refNumber(String? value) => setField<String>('ref_number', value);

  double? get gstAmount => getField<double>('gst_amount');
  set gstAmount(double? value) => setField<double>('gst_amount', value);
}
