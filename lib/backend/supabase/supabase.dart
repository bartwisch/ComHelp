import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://mnfcuppfchzmrimlabkb.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1uZmN1cHBmY2h6bXJpbWxhYmtiIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzkzMDU4MjQsImV4cCI6MTk5NDg4MTgyNH0.z36Wk3_aGJqHtDwxiUivMtp9Qr52vRH6GnisjoyjIc4';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
