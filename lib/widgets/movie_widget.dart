// import 'dart:io';
// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_day2_demo/models/movie.dart';
import 'package:flutter_day2_demo/ui/post_details/movie_details_screen.dart';

class PostWidget extends StatelessWidget {
  final Result post;
  
  const PostWidget({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PostDetailsScreen(post: post,)));
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
         child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image.network("https://image.tmdb.org/t/p/w500/"+ post.profilePath
                              ,
                               width: 100,
                                fit: BoxFit.fill,
                              height: 100,
                               
                                
                              ),
                              Expanded(
                                  child: Container(
                                      padding: EdgeInsets.all(2),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text(
                                            post.name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                                "${post.knownForDepartment}",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.grey,
                                            ),
                                       
                                          ),


                                          SizedBox(height: 8),
                                          Text(
                                            "Popularity :   "    
                                                 
                                           +
                                                "${post.popularity}",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.grey,
                                            ),
                                       
                                          ),
                                          SizedBox(height: 8),
                                          // new Wrap(
                                          //     spacing: 3.0,
                                          //     runSpacing: 4.0,
                                          //     direction: Axis.horizontal,
                                          //     children: post.knownFor
                                          //         .map((e) =>
                                          //             Chip(label: Text(e.toString())))
                                          //         .toList()),
                                        ],
                                      )))
                            ]))
      ),
    );
  }
}
