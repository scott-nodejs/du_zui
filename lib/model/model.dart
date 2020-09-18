import 'package:json_annotation/json_annotation.dart';
part 'model.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class Reslut{
  Reslut(this.meta,this.response);
  @JsonKey(name: 'meta')
  Meta meta;
  @JsonKey(name: 'response')
  MyResponse response;
  //不同的类使用不同的mixin即可
  factory Reslut.fromJson(Map<String, dynamic> json) => _$ReslutFromJson(json);
  Map<String, dynamic> toJson() => _$ReslutToJson(this);
}

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class Meta{
  Meta(this.status,this.msg);

  int status;
  String msg;
  factory Meta.fromJson(Map<String,dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class MyResponse {
  @JsonKey(name: 'has_more')
  bool hasMore;
  @JsonKey(name: 'last_key')
  var lastKey;
  MyColumn column;
  Article article;
  List<Feed> feeds;
  List<Author> authors;
  List<Author> subscribers;
  List<MyColumn> columns;
  List<MyBanner> banners;
  List<App> apps;
  MyResponse(
      this.column,
      );
  factory MyResponse.fromJson(Map<String,dynamic> json) => _$MyResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MyResponseToJson(this);
}

@JsonSerializable()
class Feed {
  String image;
  int type;
  @JsonKey(name: 'index_type')
  int indexType;
  Post post;
  @JsonKey(name: 'news_list')
  List<News> newsList;
  Feed(this.image,this.type,this.post,this.indexType,this.newsList);
  factory Feed.fromJson(Map<String,dynamic> json) => _$FeedFromJson(json);
  Map<String, dynamic> toJson() => _$FeedToJson(this);
}

@JsonSerializable()
class News{
  String description;
  News(this.description);
  factory News.fromJson(Map<String,dynamic> json) => _$NewsFromJson(json);
  Map<String, dynamic> toJson() => _$NewsToJson(this);
}

@JsonSerializable()
class Post {
  int id;
  int genre;
  Category category;
  User user;
  String title;
  @JsonKey(name: "intro")
  String description;
  @JsonKey(name: 'dateString')
  String publishTime;
  String image;
  @JsonKey(name: 'createDate')
  String startTime;
  @JsonKey(name: 'commentCount')
  int commentCount;
  ///评论数
  bool commentStatus;
  ///收藏数
  @JsonKey(name: 'applaudCount')
  int praiseCount;
  @JsonKey(name: 'tags')
  String superTag;
  @JsonKey(name: 'page_style')
  int pageStyle;
  @JsonKey(name: 'post_id')
  int postId;
  String appview;
  @JsonKey(name: 'file_length')
  String filmLength;
  String datatype;

  Post({this.id,
    this.genre,
    this.title,
    this.description,
    this.publishTime,
    this.image,
    this.startTime,
    this.commentCount,
    this.commentStatus,
    this.praiseCount,
    this.superTag,
    this.pageStyle,
    this.postId,
    this.appview,
    this.filmLength,
    this.datatype,
    this.category,
    this.user,
  });
  factory Post.fromJson(Map<String,dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}

@JsonSerializable()
class Category {
  @JsonKey(name: "name")
  String title;
  int id;
  @JsonKey(name: 'icon')
  String imageLab;
  Category({this.title,this.id,this.imageLab});
  factory Category.fromJson(Map<String,dynamic> json) => _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class MyColumn {
  String name;
  int id;
  String icon;
  String image;
  String description;
  @JsonKey(name: 'subscriber_num')
  int subscriberNum;
  @JsonKey(name: 'content_provider')
  String contentProvider;
  int location;
  @JsonKey(name: 'show_type')
  int showType;
  MyColumn({this.name,this.id,this.icon,this.location,this.showType,this.description,this.subscriberNum});
  factory MyColumn.fromJson(Map<String,dynamic> json) => _$MyColumnFromJson(json);
  Map<String, dynamic> toJson() => _$MyColumnToJson(this);
}

@JsonSerializable()
class MyBanner {
  int type;
  String image;
  Post post;
  MyBanner({this.type,this.image,this.post});
  factory MyBanner.fromJson(Map<String,dynamic> json) => _$MyBannerFromJson(json);
  Map<String, dynamic> toJson() => _$MyBannerToJson(this);
}

@JsonSerializable()
class Article{
   int id;
   String body;
   List<String> js;
   List<String> css;
   List<String> image;
   Article({this.id,this.body,this.js,this.css,this.image});
  factory Article.fromJson(Map<String,dynamic> json) => _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

@JsonSerializable()
class Author{
  int id;
  String description;
  String avatar;
  String name;
  Author({this.id,this.description,this.avatar,this.name});
  factory Author.fromJson(Map<String,dynamic> json) => _$AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}


@JsonSerializable()
class User{
  int id;
  String description;
  String photo;
  String nickname;
  User({this.id,this.description,this.photo,this.nickname});
  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class App{
  int id;
  String name;
  String categoryEnName;
  int categoryId;
  String url;
  String type;
  String company;
  double score;
  int articleCount;
  App({
    this.id,
    this.name,
    this.url,
    this.categoryEnName,
    this.categoryId,
    this.company,
    this.score,
    this.articleCount,
    this.type
  });
  factory App.fromJson(Map<String,dynamic> json) => _$AppFromJson(json);
  Map<String, dynamic> toJson() => _$AppToJson(this);
}
