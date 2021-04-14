import 'package:flutter/material.dart';
import 'package:flutter_day2_demo/models/movie.dart';
import 'package:flutter_day2_demo/ui/post_image/movie_image_screen.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PostDetailsScreen extends StatelessWidget {
  final Result post;
  final KnownFor known;
  const PostDetailsScreen({Key key, this.post, this.known}) : super(key: key);

  Map<String, dynamic> get json => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post details"),
      ),
      body: Container(
          child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PostImageScreen(
                          post: post,
                        )));
              },
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
          
                  children: post.knownFor
                              .map((e) => Image.network(
                                    "https://image.tmdb.org/t/p/w500/" +
                                        e.backdropPath,
                                    width: 150,
                                    height: 250,
                                    fit: BoxFit.fill,
                                  ))
                              .toList())),
                          
                                         
                                         
                                         
                                         
                                         
                                         
                                          )  ,            
                              );
                              
  }
}
