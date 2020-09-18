// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reslut _$ReslutFromJson(Map<String, dynamic> json) {
  return Reslut(
      json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      json['response'] == null
          ? null
          : MyResponse.fromJson(json['response'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ReslutToJson(Reslut instance) =>
    <String, dynamic>{'meta': instance.meta, 'response': instance.response};

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta(json['status'] as int, json['msg'] as String);
}

Map<String, dynamic> _$MetaToJson(Meta instance) =>
    <String, dynamic>{'status': instance.status, 'msg': instance.msg};

MyResponse _$MyResponseFromJson(Map<String, dynamic> json) {
  return MyResponse(json['column'] == null
      ? null
      : MyColumn.fromJson(json['column'] as Map<String, dynamic>))
    ..hasMore = json['has_more'] as bool
    ..lastKey = json['last_key']
    ..article = json['article'] == null
        ? null
        : Article.fromJson(json['article'] as Map<String, dynamic>)
    ..feeds = (json['feeds'] as List)
        ?.map(
            (e) => e == null ? null : Feed.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..authors = (json['authors'] as List)
        ?.map((e) =>
            e == null ? null : Author.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..subscribers = (json['subscribers'] as List)
        ?.map((e) =>
            e == null ? null : Author.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..columns = (json['columns'] as List)
        ?.map((e) =>
            e == null ? null : MyColumn.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..banners = (json['banners'] as List)
        ?.map((e) =>
            e == null ? null : MyBanner.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..apps = (json['apps'] as List)
        ?.map((e) =>
            e == null ? null : App.fromJson(e as Map<String,dynamic>))
      ?.toList();
}

Map<String, dynamic> _$MyResponseToJson(MyResponse instance) =>
    <String, dynamic>{
      'has_more': instance.hasMore,
      'last_key': instance.lastKey,
      'column': instance.column,
      'article': instance.article,
      'feeds': instance.feeds,
      'authors': instance.authors,
      'subscribers': instance.subscribers,
      'columns': instance.columns,
      'banners': instance.banners
    };

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return Feed(
      json['image'] as String,
      json['type'] as int,
      json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      json['index_type'] as int,
      (json['news_list'] as List)
          ?.map((e) =>
              e == null ? null : News.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'image': instance.image,
      'type': instance.type,
      'index_type': instance.indexType,
      'post': instance.post,
      'news_list': instance.newsList
    };

News _$NewsFromJson(Map<String, dynamic> json) {
  return News(json['description'] as String);
}

Map<String, dynamic> _$NewsToJson(News instance) =>
    <String, dynamic>{'description': instance.description};

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post(
      id: json['id'] as int,
      genre: json['genre'] as int,
      title: json['title'] as String,
      description: json['intro'] as String,
      publishTime: json['dateString'] as String,
      image: json['image'] as String,
      startTime: json['createDate'] as String,
      commentCount: json['commentCount'] as int,
      commentStatus: json['comment_status'] as bool,
      praiseCount: json['applaudCount'] as int,
      superTag: json['tags'] as String,
      pageStyle: json['page_style'] as int,
      postId: json['post_id'] as int,
      appview: json['appview'] as String,
      filmLength: json['file_length'] as String,
      datatype: json['datatype'] as String,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null : User.fromJson(json['user'] as Map<String, dynamic>)
      );
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'genre': instance.genre,
      'category': instance.category,
      'title': instance.title,
      'description': instance.description,
      'publish_time': instance.publishTime,
      'image': instance.image,
      'start_time': instance.startTime,
      'comment_count': instance.commentCount,
      'comment_status': instance.commentStatus,
      'praise_count': instance.praiseCount,
      'super_tag': instance.superTag,
      'page_style': instance.pageStyle,
      'post_id': instance.postId,
      'appview': instance.appview,
      'file_length': instance.filmLength,
      'datatype': instance.datatype
    };

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
      title: json['name'] as String,
      id: json['id'] as int,
      imageLab: json['icon'] as String);
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'image_lab': instance.imageLab
    };

MyColumn _$MyColumnFromJson(Map<String, dynamic> json) {
  return MyColumn(
      name: json['name'] as String,
      id: json['id'] as int,
      icon: json['icon'] as String,
      location: json['location'] as int,
      showType: json['show_type'] as int,
      description: json['description'] as String,
      subscriberNum: json['subscriber_num'] as int)
    ..image = json['image'] as String
    ..contentProvider = json['content_provider'] as String;
}

Map<String, dynamic> _$MyColumnToJson(MyColumn instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'icon': instance.icon,
      'image': instance.image,
      'description': instance.description,
      'subscriber_num': instance.subscriberNum,
      'content_provider': instance.contentProvider,
      'location': instance.location,
      'show_type': instance.showType
    };

MyBanner _$MyBannerFromJson(Map<String, dynamic> json) {
  return MyBanner(
      type: json['type'] as int,
      image: json['image'] as String,
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>));
}

Map<String, dynamic> _$MyBannerToJson(MyBanner instance) => <String, dynamic>{
      'type': instance.type,
      'image': instance.image,
      'post': instance.post
    };

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article(
      id: json['id'] as int,
      body: json['body'] as String,
      js: (json['js'] as List)?.map((e) => e as String)?.toList(),
      css: (json['css'] as List)?.map((e) => e as String)?.toList(),
      image: (json['image'] as List)?.map((e) => e as String)?.toList());
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'js': instance.js,
      'css': instance.css,
      'image': instance.image
    };

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return Author(
      id: json['id'] as int,
      description: json['description'] as String,
      avatar: json['avatar'] as String,
      name: json['name'] as String);
}

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'avatar': instance.avatar,
      'name': instance.name
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      id: json['id'] as int,
      description: json['description'] as String,
      photo: json['photo'] as String,
      nickname: json['nickname'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'description': instance.description,
  'photo': instance.photo,
  'nickname': instance.nickname
};


App _$AppFromJson(Map<String, dynamic> json) {
  return App(
      id: json['id'] as int,
      name: json['name'] as String,
      url: json['url'] as String,
      score: json['score'] as double,
      articleCount: json['articleCount'] as int,
      company: json['company'] as String,
      categoryEnName: json['categoryEnName'] as String,
      categoryId: json['categoryId'] as int,
  );
}

Map<String, dynamic> _$AppToJson(App instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'url': instance.url,
  'score': instance.score,
  'articleCount': instance.articleCount,
  'company': instance.company,
  'categoryEnName': instance.categoryEnName,
  'categoryId': instance.categoryId
};