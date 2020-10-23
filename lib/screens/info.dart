import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

     physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Container(
        color: Colors.grey[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: _text(
                text: "SQUADS",letterSpacing: 0.2,size: 15
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _text(
                    text: "Chennai Super Kings",letterSpacing: 0.2,size: 16
                  ),
                  Icon(Icons.arrow_back_ios, textDirection: TextDirection.rtl,size: 18)
                ],
              ),
            ),
            Divider(
              height: 0,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  _text(
                    text: "Rajasthan Royals",letterSpacing: 0.2,size: 16
                  ),
                  Icon(Icons.arrow_back_ios, textDirection: TextDirection.rtl,size: 18)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: _text(
                text: "INFO",letterSpacing: 0.2,size: 15
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  _infoDetails(name: "Match", details: "37th Match"),
                  _infoDetails(name: "Series", details: "Indian Premier League 2020"),
                  _infoDetails(name: "Date", details: "Monday, October 19, 2020"),
                  _infoDetails(name: "Time", details: "7:30 PM"),
                  _infoDetails(name: "Toss", details: "Chennai Super Kings opt to bat"),
                  _infoDetails(name: "Venue", details: "Sheikh Zayed Stadium, Abu Dhabi"),
                  _infoDetails(name: "Umpires", details: "Chris Gaffaney, Virender Sharma"),
                  _infoDetails(name: "3rd Umpire", details: "Ulhas Gandhe"),
                  _infoDetails(name: "Referee", details: "Manu Nayyar"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: _text(
                text: "VENUE GUIDE",letterSpacing: 0.2,size: 15
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  _infoDetails(name: "Stadium", details: "Sheikh Zayed Stadium"),
                  _infoDetails(name: "City", details: "Abu Dhabi"),
                  _infoDetails(name: "Capacity", details: "20,000"),
                  _infoDetails(name: "Ends", details: "North End, Pavilion End"),
                  _infoDetails(name: "Host to", details: "United Arab Emirates"),
              ]
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _text(
      {String text,
      double size,
      FontWeight fontWeight,
      TextAlign textAlign,
      double letterSpacing}) {
    return Text(
      text,
      style: TextStyle(

          fontFamily: "SF",
          fontSize: size,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
      textAlign: textAlign,
    );
  }

  Widget _infoDetails({String name, String details}){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: _text(text: name),
            flex: 1,
          ),
          Expanded(
            child: _text(text: details),
            flex: 2,
          ),
        ],
      ),
    );
  }
}
