import 'package:flutter/material.dart';
import 'package:tab_bars/screens/home_first_page.dart';
import 'package:tab_bars/screens/home_second_page.dart';
import 'package:tab_bars/screens/home_third_page.dart';

class home_screen_2 extends StatefulWidget {
  const home_screen_2({Key? key}) : super(key: key);

  @override
  _home_screen_2State createState() => _home_screen_2State();
}

class _home_screen_2State extends State<home_screen_2>
    with SingleTickerProviderStateMixin {
  // add with SingleTickerProviderStateMixMin

  late TabController tabController; // define TabController;

  @override
  void initState() {
    // init tabController in initState()
    super.initState();
    tabController = TabController(length: 3, vsync: this);

    tabController.addListener(() {
      // without listener tabController not works
      setState(() {});
    });
  }

  @override
  void dispose() {
    tabController.dispose(); //  also clean tabController when app close
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // replace DefaultTabBarControll to Scaffold
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen ${tabController.index + 1}"),
        centerTitle: true,
        bottom: TabBar(
          controller: tabController, // define controller : here
          tabs: [
            Tab(
              text: "Tab 1 ",
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "Tab 2 ",
              icon: Icon(Icons.email),
            ),
            Tab(
              text: "Tab 3 ",
              icon: Icon(Icons.facebook),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController, // define controller : here
        children: [home_first_page(), home_second_page(), home_third_page()],
      ),
      // if you want to switch by button click use tabController.animateTo(position);
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "Go to First Page",
        onPressed: () {
          tabController.animateTo(0);
        },
      ),
    );
  }
}
