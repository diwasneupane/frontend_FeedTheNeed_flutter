// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Blog _$BlogFromJson(Map<String, dynamic> json) {
  return Blog(
    id: json['_id'] as String?,
    blog_name: json['blog_name'] as String?,
    short_desc: json['short_desc'] as String?,
    blog_desc: json['blog_desc'] as String?,
    blog_category: json['blog_category'] as String?,
    blog_image: json['blog_image'] as String?,
  );
}

Map<String, dynamic> _$BlogToJson(Blog instance) => <String, dynamic>{
      '_id': instance.id,
      'blog_name': instance.blog_name,
      'short_desc': instance.short_desc,
      'blog_desc': instance.blog_desc,
      'blog_category': instance.blog_category,
      'blog_image': instance.blog_image,
    };
