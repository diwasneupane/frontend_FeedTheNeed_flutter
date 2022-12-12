import 'package:feedtheneed/api/blog_api.dart';
import 'package:feedtheneed/response/single_blog_response.dart';

class BlogRepository {
  Future<List<dynamic>> getBlogs() async {
    return BlogAPI().getBlogs();
  }

  Future<SingleBlogResponse?> getSingleBlogs(String blogid) async {
    return BlogAPI().getSingleBlogs(blogid);
  }
}
