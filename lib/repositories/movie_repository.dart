import 'package:flutter_day2_demo/models/movie.dart';
import 'package:flutter_day2_demo/services/movie_service.dart';

class PostRepository{
  PostService _postService = PostService();

  Future<Movie> fetchPosts(){
    return _postService.fetchPosts();
  }
}