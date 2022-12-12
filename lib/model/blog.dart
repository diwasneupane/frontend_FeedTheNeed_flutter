// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'blog.g.dart';

@JsonSerializable()
class Blog {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'blog_name')
  String? blog_name;
  @JsonKey(name: 'short_desc')
  String? short_desc;
  @JsonKey(name: 'blog_desc')
  String? blog_desc;
  @JsonKey(name: 'blog_category')
  String? blog_category;
  @JsonKey(name: 'blog_image')
  String? blog_image;

  Blog({
    this.id,
    this.blog_name,
    this.short_desc,
    this.blog_desc,
    this.blog_category,
    this.blog_image,
  });

  //1. flutter clean
  //2. flutter pub get

//3. flutter pub run build_runner build
  factory Blog.fromJson(Map<String, dynamic> json) {
    return _$BlogFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BlogToJson(this);
}
