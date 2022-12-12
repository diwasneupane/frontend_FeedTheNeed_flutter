import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:feedtheneed/api/http_services.dart';
import 'package:feedtheneed/response/single_blog_response.dart';
import 'package:feedtheneed/utils/api_url.dart';
import 'package:flutter/material.dart';

class BlogAPI {
  Future<List<dynamic>> getBlogs() async {
    // Future.delayed(const Duration(seconds: 5), () {});
    List<dynamic> blogList = [];

    try {
      var dio = HttpServices().getDioInstance();
      dio.interceptors
          .add(DioCacheManager(CacheConfig(baseUrl: baseUrl)).interceptor);
      Response response = await dio.get(
        baseUrl + blog,
      );
      // debugPrint(response.data.length.toString());
      if (response.statusCode == 201) {
        // debugPrint(response.data.toString());

        for (var data in response.data!) {
          blogList.add(data);
        }
      }
    } catch (e) {
      throw Exception(e);
    }
    return blogList;
  }

  Future<SingleBlogResponse?> getSingleBlogs(String blogid) async {
    Future.delayed(const Duration(seconds: 2), () {});
    SingleBlogResponse? singleblogResponse;
    try {
      var dio = HttpServices().getDioInstance();

      Response response = await dio.get(baseUrl + blog + blogid);

      if (response.statusCode == 201) {
        // debugPrint(response.data.toString());
        singleblogResponse = SingleBlogResponse.fromJson(response.data);
        debugPrint("asdbh");
      } else {
        singleblogResponse = null;
      }
    } catch (e) {
      throw Exception(e);
    }
    return singleblogResponse;
  }
}
