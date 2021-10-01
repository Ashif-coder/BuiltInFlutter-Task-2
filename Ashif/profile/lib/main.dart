import 'package:flutter/material.dart';
import 'profile.dart';
import 'news.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
    initialRoute: '/',
    routes: {
    '/': (context) => Profile(),
    '/NewsScreen':(context) => News(),
    },
      debugShowCheckedModeBanner: false,
    );
  }
}
