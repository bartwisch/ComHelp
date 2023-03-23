import '../database.dart';

class FeedbacksTable extends SupabaseTable<FeedbacksRow> {
  @override
  String get tableName => 'feedbacks';

  @override
  FeedbacksRow createRow(Map<String, dynamic> data) => FeedbacksRow(data);
}

class FeedbacksRow extends SupabaseDataRow {
  FeedbacksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FeedbacksTable();

  int get fbId => getField<int>('fb_id')!;
  set fbId(int value) => setField<int>('fb_id', value);

  DateTime? get fbCreatedAt => getField<DateTime>('fb_created_at');
  set fbCreatedAt(DateTime? value) =>
      setField<DateTime>('fb_created_at', value);

  int? get paId => getField<int>('pa_id');
  set paId(int? value) => setField<int>('pa_id', value);

  String? get fbFeedbackText => getField<String>('fb_feedback text');
  set fbFeedbackText(String? value) =>
      setField<String>('fb_feedback text', value);

  String? get autor => getField<String>('autor');
  set autor(String? value) => setField<String>('autor', value);

  String? get fbKommentarKi => getField<String>('fb_kommentar ki');
  set fbKommentarKi(String? value) =>
      setField<String>('fb_kommentar ki', value);

  String? get fbEmail => getField<String>('fb_email');
  set fbEmail(String? value) => setField<String>('fb_email', value);
}
