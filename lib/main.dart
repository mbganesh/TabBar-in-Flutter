import 'package:flutter/material.dart';
import 'package:tab_bars/screens/home_screen.dart';
import 'package:tab_bars/screens/home_screen_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: home_screen(),
      home: home_screen_2(),
    );
  }
}
