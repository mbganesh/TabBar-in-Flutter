import 'package:flutter/material.dart';
import 'package:tab_bars/screens/home_first_page.dart';
import 'package:tab_bars/screens/home_second_page.dart';
import 'package:tab_bars/screens/home_third_page.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      //  replace Scaffold to DefaultTabController
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Demo"),
          centerTitle: true,
          bottom: TabBar(
            // define TabBar as botton of AppBar
            tabs: [
              Tab(
                text: "Tab 1",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Tab 2",
                icon: Icon(Icons.ac_unit),
              ),
              Tab(
                text: "Tab 3",
                icon: Icon(Icons.access_alarm),
              ),
            ],
          ),
        ),
        body: TabBarView(
          // define TabBar Screen inside body as TabBarView
          children: [home_first_page(), home_second_page(), home_third_page()],
        ),
      ));
}
