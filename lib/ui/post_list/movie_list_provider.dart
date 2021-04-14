import 'package:flutter/material.dart';
import 'package:flutter_day2_demo/models/movie.dart';
import 'package:flutter_day2_demo/repositories/movie_repository.dart';

class PostsProvider extends ChangeNotifier{
  Movie posts;
  PostRepository _postRepository = PostRepository();

  PostsProvider(){
    getPosts();
  }

  void getPosts() {
    _postRepository.fetchPosts().then(
            (newPosts){
              posts = newPosts;
              notifyListeners();
            }
    );
  }
}