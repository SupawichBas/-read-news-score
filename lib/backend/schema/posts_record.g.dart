// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsRecord> _$postsRecordSerializer = new _$PostsRecordSerializer();

class _$PostsRecordSerializer implements StructuredSerializer<PostsRecord> {
  @override
  final Iterable<Type> types = const [PostsRecord, _$PostsRecord];
  @override
  final String wireName = 'PostsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PostsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.newsUrl;
    if (value != null) {
      result
        ..add('news_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.newsH;
    if (value != null) {
      result
        ..add('newsH')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.newsS;
    if (value != null) {
      result
        ..add('newsS')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.like;
    if (value != null) {
      result
        ..add('Like')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.dropD;
    if (value != null) {
      result
        ..add('DropD')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  PostsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'news_url':
          result.newsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'newsH':
          result.newsH = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'newsS':
          result.newsS = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Like':
          result.like = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'DropD':
          result.dropD = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$PostsRecord extends PostsRecord {
  @override
  final DocumentReference<Object> user;
  @override
  final String newsUrl;
  @override
  final String newsH;
  @override
  final String newsS;
  @override
  final bool like;
  @override
  final String dropD;
  @override
  final DocumentReference<Object> reference;

  factory _$PostsRecord([void Function(PostsRecordBuilder) updates]) =>
      (new PostsRecordBuilder()..update(updates)).build();

  _$PostsRecord._(
      {this.user,
      this.newsUrl,
      this.newsH,
      this.newsS,
      this.like,
      this.dropD,
      this.reference})
      : super._();

  @override
  PostsRecord rebuild(void Function(PostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsRecordBuilder toBuilder() => new PostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsRecord &&
        user == other.user &&
        newsUrl == other.newsUrl &&
        newsH == other.newsH &&
        newsS == other.newsS &&
        like == other.like &&
        dropD == other.dropD &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, user.hashCode), newsUrl.hashCode),
                        newsH.hashCode),
                    newsS.hashCode),
                like.hashCode),
            dropD.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostsRecord')
          ..add('user', user)
          ..add('newsUrl', newsUrl)
          ..add('newsH', newsH)
          ..add('newsS', newsS)
          ..add('like', like)
          ..add('dropD', dropD)
          ..add('reference', reference))
        .toString();
  }
}

class PostsRecordBuilder implements Builder<PostsRecord, PostsRecordBuilder> {
  _$PostsRecord _$v;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  String _newsUrl;
  String get newsUrl => _$this._newsUrl;
  set newsUrl(String newsUrl) => _$this._newsUrl = newsUrl;

  String _newsH;
  String get newsH => _$this._newsH;
  set newsH(String newsH) => _$this._newsH = newsH;

  String _newsS;
  String get newsS => _$this._newsS;
  set newsS(String newsS) => _$this._newsS = newsS;

  bool _like;
  bool get like => _$this._like;
  set like(bool like) => _$this._like = like;

  String _dropD;
  String get dropD => _$this._dropD;
  set dropD(String dropD) => _$this._dropD = dropD;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PostsRecordBuilder() {
    PostsRecord._initializeBuilder(this);
  }

  PostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _newsUrl = $v.newsUrl;
      _newsH = $v.newsH;
      _newsS = $v.newsS;
      _like = $v.like;
      _dropD = $v.dropD;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostsRecord;
  }

  @override
  void update(void Function(PostsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostsRecord build() {
    final _$result = _$v ??
        new _$PostsRecord._(
            user: user,
            newsUrl: newsUrl,
            newsH: newsH,
            newsS: newsS,
            like: like,
            dropD: dropD,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
