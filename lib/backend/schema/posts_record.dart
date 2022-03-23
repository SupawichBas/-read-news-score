import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'posts_record.g.dart';

abstract class PostsRecord implements Built<PostsRecord, PostsRecordBuilder> {
  static Serializer<PostsRecord> get serializer => _$postsRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'news_url')
  String get newsUrl;

  @nullable
  String get newsH;

  @nullable
  String get newsS;

  @nullable
  @BuiltValueField(wireName: 'Like')
  bool get like;

  @nullable
  @BuiltValueField(wireName: 'DropD')
  String get dropD;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PostsRecordBuilder builder) => builder
    ..newsUrl = ''
    ..newsH = ''
    ..newsS = ''
    ..like = false
    ..dropD = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PostsRecord._();
  factory PostsRecord([void Function(PostsRecordBuilder) updates]) =
      _$PostsRecord;

  static PostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPostsRecordData({
  DocumentReference user,
  String newsUrl,
  String newsH,
  String newsS,
  bool like,
  String dropD,
}) =>
    serializers.toFirestore(
        PostsRecord.serializer,
        PostsRecord((p) => p
          ..user = user
          ..newsUrl = newsUrl
          ..newsH = newsH
          ..newsS = newsS
          ..like = like
          ..dropD = dropD));
