import 'package:flutter/material.dart';

class home_third_page extends StatefulWidget {
  const home_third_page({Key? key}) : super(key: key);

  @override
  _home_third_pageState createState() => _home_third_pageState();
}

class _home_third_pageState extends State<home_third_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          "Third Screen",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
