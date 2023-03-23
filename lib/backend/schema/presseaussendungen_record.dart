import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'presseaussendungen_record.g.dart';

abstract class PresseaussendungenRecord
    implements
        Built<PresseaussendungenRecord, PresseaussendungenRecordBuilder> {
  static Serializer<PresseaussendungenRecord> get serializer =>
      _$presseaussendungenRecordSerializer;

  @BuiltValueField(wireName: 'post_photo')
  String? get postPhoto;

  @BuiltValueField(wireName: 'post_title')
  String? get postTitle;

  @BuiltValueField(wireName: 'post_description')
  String? get postDescription;

  @BuiltValueField(wireName: 'post_user')
  DocumentReference? get postUser;

  @BuiltValueField(wireName: 'time_posted')
  DateTime? get timePosted;

  BuiltList<DocumentReference>? get likes;

  @BuiltValueField(wireName: 'num_comments')
  int? get numComments;

  @BuiltValueField(wireName: 'num_votes')
  int? get numVotes;

  @BuiltValueField(wireName: 'pa_titel')
  String? get paTitel;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PresseaussendungenRecordBuilder builder) =>
      builder
        ..postPhoto = ''
        ..postTitle = ''
        ..postDescription = ''
        ..likes = ListBuilder()
        ..numComments = 0
        ..numVotes = 0
        ..paTitel = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('presseaussendungen');

  static Stream<PresseaussendungenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PresseaussendungenRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PresseaussendungenRecord._();
  factory PresseaussendungenRecord(
          [void Function(PresseaussendungenRecordBuilder) updates]) =
      _$PresseaussendungenRecord;

  static PresseaussendungenRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPresseaussendungenRecordData({
  String? postPhoto,
  String? postTitle,
  String? postDescription,
  DocumentReference? postUser,
  DateTime? timePosted,
  int? numComments,
  int? numVotes,
  String? paTitel,
}) {
  final firestoreData = serializers.toFirestore(
    PresseaussendungenRecord.serializer,
    PresseaussendungenRecord(
      (p) => p
        ..postPhoto = postPhoto
        ..postTitle = postTitle
        ..postDescription = postDescription
        ..postUser = postUser
        ..timePosted = timePosted
        ..likes = null
        ..numComments = numComments
        ..numVotes = numVotes
        ..paTitel = paTitel,
    ),
  );

  return firestoreData;
}
