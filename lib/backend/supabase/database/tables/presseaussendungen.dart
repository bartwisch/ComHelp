import '../database.dart';

class PresseaussendungenTable extends SupabaseTable<PresseaussendungenRow> {
  @override
  String get tableName => 'presseaussendungen';

  @override
  PresseaussendungenRow createRow(Map<String, dynamic> data) =>
      PresseaussendungenRow(data);
}

class PresseaussendungenRow extends SupabaseDataRow {
  PresseaussendungenRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PresseaussendungenTable();

  int get paId => getField<int>('pa_id')!;
  set paId(int value) => setField<int>('pa_id', value);

  DateTime? get paCreatedAt => getField<DateTime>('pa_created_at');
  set paCreatedAt(DateTime? value) =>
      setField<DateTime>('pa_created_at', value);

  String? get paVorname => getField<String>('pa_vorname');
  set paVorname(String? value) => setField<String>('pa_vorname', value);

  String? get paNachname => getField<String>('pa_nachname');
  set paNachname(String? value) => setField<String>('pa_nachname', value);

  String? get paAbteilung => getField<String>('pa_abteilung');
  set paAbteilung(String? value) => setField<String>('pa_abteilung', value);

  String? get paInfotext => getField<String>('pa_infotext');
  set paInfotext(String? value) => setField<String>('pa_infotext', value);

  String? get paKommentar => getField<String>('pa_kommentar');
  set paKommentar(String? value) => setField<String>('pa_kommentar', value);

  String? get paStatus => getField<String>('pa_status');
  set paStatus(String? value) => setField<String>('pa_status', value);

  String? get paTitel => getField<String>('pa_titel');
  set paTitel(String? value) => setField<String>('pa_titel', value);

  String? get paEmail => getField<String>('pa_email');
  set paEmail(String? value) => setField<String>('pa_email', value);
}
