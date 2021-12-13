import 'package:flutter/material.dart';

class home_first_page extends StatefulWidget {
  const home_first_page({Key? key}) : super(key: key);

  @override
  _home_first_pageState createState() => _home_first_pageState();
}

class _home_first_pageState extends State<home_first_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Text(
          "First Screen",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
