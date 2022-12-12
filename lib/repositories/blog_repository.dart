import 'package:feedtheneed/api/blog_api.dart';

class BlogRepository {
  Future<List<dynamic>> getBlogs() async {
    return BlogAPI().getBlogs();
  }

  // Future<SingleBlogResponse?> getSingleBlogs(BlogId) async {
  //   return BlogAPI().getSingleBlogs(BlogId);

}
