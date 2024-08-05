import '../database.dart';

class PromosTable extends SupabaseTable<PromosRow> {
  @override
  String get tableName => 'promos';

  @override
  PromosRow createRow(Map<String, dynamic> data) => PromosRow(data);
}

class PromosRow extends SupabaseDataRow {
  PromosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PromosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  double? get discountAmount => getField<double>('discount_amount');
  set discountAmount(double? value) =>
      setField<double>('discount_amount', value);

  double? get discountPercent => getField<double>('discount_percent');
  set discountPercent(double? value) =>
      setField<double>('discount_percent', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);

  DateTime? get dateStart => getField<DateTime>('date_start');
  set dateStart(DateTime? value) => setField<DateTime>('date_start', value);

  DateTime? get dateEnd => getField<DateTime>('date_end');
  set dateEnd(DateTime? value) => setField<DateTime>('date_end', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get deleted => getField<bool>('deleted');
  set deleted(bool? value) => setField<bool>('deleted', value);
}
