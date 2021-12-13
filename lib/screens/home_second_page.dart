import 'package:flutter/material.dart';

class home_second_page extends StatefulWidget {
  const home_second_page({Key? key}) : super(key: key);

  @override
  _home_second_pageState createState() => _home_second_pageState();
}

class _home_second_pageState extends State<home_second_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Second Screen",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
