import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://czcslianaeuhlibsxsob.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN6Y3NsaWFuYWV1aGxpYnN4c29iIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzgyMDM0OTEsImV4cCI6MTk5Mzc3OTQ5MX0.KDQrA3RgqcCYbjA0Sqk8g03lHf_TT6aKNZ2HHGMZp7A';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
