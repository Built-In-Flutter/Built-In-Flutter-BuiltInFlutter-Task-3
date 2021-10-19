import 'package:flutter/material.dart';
import 'dart:js';
import 'details/detailnews.dart';
import 'home/home_page.dart';
import 'home/widgets/portfolio.dart';
import 'screen/config/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themes(),
      debugShowCheckedModeBanner: false,
      routes: {
        DetailsNews.routeName: (ctx) => DetailsNews(),
        Profile.routeName2: (ctx) => Profile(),
      },
      home: Homepage(),
    );
  }
}
