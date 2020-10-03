import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:scorebaazar/screens/completed_screen.dart';
import 'package:scorebaazar/screens/live_screen.dart';
import 'package:scorebaazar/screens/upcoming_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // TabController _controller;
  // int _selectedIndex = 0;
  List<Widget> list = [
    Tab(text: "Upcoming"),
    Tab(text: "Live"),
    Tab(text: "Completed")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicator: MD2Indicator(
                indicatorSize: MD2IndicatorSize.full,
                indicatorHeight: 4.0,
                indicatorColor: Colors.blue,
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.blue,
              labelStyle: TextStyle(fontSize: 16),
              unselectedLabelStyle: TextStyle(fontSize: 14),
              unselectedLabelColor: Colors.black,
              tabs: list,
            ),
            backgroundColor: Colors.white,
            title: Text(
              "Home",
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: TabBarView(children: [
            UpcomingScreen(),
            LiveScreen(),
            CompletedScreen(),
          ]),
        ),
      ),
    );
  }
}
