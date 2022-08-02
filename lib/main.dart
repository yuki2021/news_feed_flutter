import 'package:flutter/material.dart';
import 'package:news_feed_flutter2/view/screens/home_screen.dart';
import 'package:news_feed_flutter2/view/styles/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NewsFeed",
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: BoldFont,
      ),
      home: HomeScreen(),
    );
  }
}
