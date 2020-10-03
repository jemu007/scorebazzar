// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
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
    Center(child: Text("Calculator")),
    HomeScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   // backgroundColor: Colors.white,

      //   type: BottomNavigationBarType.shifting,
      //   items: [
      //     buildBottomNavigationBarItem(
      //         icon: Icons.settings_input_composite, title: "Caclculator"),
      //     buildBottomNavigationBarItem(
      //       icon: Icons.home,
      //       title: "Home",
      //     ),
      //     buildBottomNavigationBarItem(icon: Icons.more_horiz, title: "More"),
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      // ),

      bottomNavigationBar: CurvedNavigationBar(
        // backgroundColor: Colors.blueAccent,
        backgroundColor: Colors.white,
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        animationDuration: Duration(
          milliseconds: 200,
        ),
        height: 50.0,
        items: <Widget>[
          Icon(
            Icons.settings_input_composite,
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
