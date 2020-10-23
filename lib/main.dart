// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:scorebaazar/HomePage/calculator.dart';
import 'package:scorebaazar/HomePage/home.dart';
import 'package:scorebaazar/HomePage/more_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Score Baazar",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  final tabs = [
    CalculatorScreen(),
    HomeScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xfffffafa),
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        animationDuration: Duration(
          milliseconds: 200,
        ),
        height: 50.0,
        items: <Widget>[
          Icon(
            MdiIcons.calculator,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.more_horiz,
            size: 25,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      {IconData icon, String title}) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue);
  }
}
