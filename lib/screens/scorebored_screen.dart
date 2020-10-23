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
    Tab(text: "LIVELINE"),
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
              physics: BouncingScrollPhysics(),
              isScrollable: true,
              indicatorPadding: EdgeInsets.all(1),
              indicator: MD2Indicator(
                indicatorSize: MD2IndicatorSize.full,
                indicatorHeight: 4.0,
                indicatorColor: Colors.white,
              ),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 16, fontFamily: 'SF',color: Colors.white38),
              unselectedLabelStyle: TextStyle(
                fontSize: 16,
                fontFamily: 'SF',
              ),
              unselectedLabelColor: Colors.white60,
              tabs: list,
            ),
            backgroundColor: Colors.blue[400],
            automaticallyImplyLeading: true,
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 16,
                ),
                onPressed: () => Navigator.pop(context)),
            title: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "RCB",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SF',
                    fontSize: 24,
                    letterSpacing: 0.5),
              ),
              TextSpan(
                text: " vs ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SF',
                    fontSize: 20,
                    letterSpacing: 0.5),
              ),
              TextSpan(
                text: "RR",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SF',
                    fontSize: 24,
                    letterSpacing: 0.5),
              ),
            ])),
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
