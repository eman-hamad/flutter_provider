import 'package:flutter/material.dart';
import 'package:flutter_day2_demo/ui/post_list/movies_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PostsScreen(title: 'Flutter Provider Demo'),

    );
  }
}