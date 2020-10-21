import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:scorebaazar/screens/info.dart';
import 'package:scorebaazar/screens/khailagai.dart';
import 'package:scorebaazar/screens/liveline.dart';
import 'package:scorebaazar/screens/scoreboard.dart';
import 'package:scorebaazar/screens/session.dart';

class ScoreBoredScreen extends StatefulWidget {
  @override
  _ScoreBoredScreenState createState() => _ScoreBoredScreenState();
}

class _ScoreBoredScreenState extends State<ScoreBoredScreen> {
  List<Widget> list = [
    Tab(
      text: "LIVELINE",
    ),
    Tab(text: "SCOREBOARD"),
    Tab(text: "KHAILAGAI"),
    Tab(text: "SESSION"),
    Tab(text: "INFO")
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            bottom: TabBar(
              isScrollable: true,
              indicatorPadding: EdgeInsets.all(1),
              indicator: MD2Indicator (
                indicatorSize: MD2IndicatorSize.full,
                indicatorHeight: 4.0,
                indicatorColor: Colors.blue,
              ),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.blue,
              labelStyle: TextStyle(fontSize: 16, fontFamily: 'SF'),

              unselectedLabelStyle: TextStyle(
                fontSize: 14,
                fontFamily: 'SF',
              ),
              unselectedLabelColor: Colors.black,
              tabs: list,
            ),
            backgroundColor: Colors.white,
            automaticallyImplyLeading: true,
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 16,
                ),
                onPressed: () => Navigator.pop(context)),
            title: Text(
              "RCB vs RR",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SF',
                  fontSize: 24,
                  letterSpacing: 0.5),
            ),
          ),
          body: TabBarView(children: [
            LiveLineScreen(),
            ScoreBoared(),
            KhaiLagai(),
            Session(),
            Info(),
          ]),
        ),
      ),
    );
  }
}
