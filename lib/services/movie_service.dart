import 'dart:convert';

import 'package:flutter_day2_demo/models/movie.dart';
import 'package:http/http.dart' as http;

class PostService{
  Future<Movie> fetchPosts() async{
    final response = await http.get('https://api.themoviedb.org/3/person/popular?api_key=5236f12f171de2a71328e01e74ebc092');
    if(response.statusCode == 200){
      print(response.body);
      // return (json.decode(response.body) as List).map((e) => Post.fromJson(e)).toList();
     return Movie.fromJson(json.decode(response.body));
      
      
    }else{
      throw Exception('FAILED TO LOAD POST');
    }
  }
}