import '../database.dart';

class ColumnpreferencesTable extends SupabaseTable<ColumnpreferencesRow> {
  @override
  String get tableName => 'columnpreferences';

  @override
  ColumnpreferencesRow createRow(Map<String, dynamic> data) =>
      ColumnpreferencesRow(data);
}

class ColumnpreferencesRow extends SupabaseDataRow {
  ColumnpreferencesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ColumnpreferencesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool get deleted => getField<bool>('deleted')!;
  set deleted(bool value) => setField<bool>('deleted', value);

  String? get tableNameField => getField<String>('table_name');
  set tableNameField(String? value) => setField<String>('table_name', value);

  List<String> get columns => getListField<String>('columns');
  set columns(List<String>? value) => setListField<String>('columns', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
