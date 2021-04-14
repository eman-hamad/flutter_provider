import 'package:flutter_day2_demo/ui/post_list/movie_list_provider.dart';
import 'package:flutter_day2_demo/widgets/movie_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostsScreen extends StatefulWidget {
  PostsScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  ScrollController scrollController = ScrollController(
  initialScrollOffset: 10, // or whatever offset you wish
  keepScrollOffset: true,
);

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ChangeNotifierProvider<PostsProvider>(
        create: (context) => PostsProvider(),
        child: Consumer<PostsProvider>(
          builder: (buildContext, postProvider, _){
            return (postProvider.posts != null )?
             ListView.builder(
             
               controller: scrollController,
                itemCount: postProvider.posts.results.length,
                itemBuilder: (ctx, index){
                  final post = postProvider.posts.results[index];
                  return PostWidget(post: post,);
                }
            ): Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
