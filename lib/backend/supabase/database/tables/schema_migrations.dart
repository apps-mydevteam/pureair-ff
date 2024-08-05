import '../database.dart';

class SchemaMigrationsTable extends SupabaseTable<SchemaMigrationsRow> {
  @override
  String get tableName => 'schema_migrations';

  @override
  SchemaMigrationsRow createRow(Map<String, dynamic> data) =>
      SchemaMigrationsRow(data);
}

class SchemaMigrationsRow extends SupabaseDataRow {
  SchemaMigrationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SchemaMigrationsTable();

  String get version => getField<String>('version')!;
  set version(String value) => setField<String>('version', value);
}
