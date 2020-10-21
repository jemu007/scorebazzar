import 'package:flutter/material.dart';

class UpcomingScreen extends StatefulWidget {
  @override
  _UpcomingScreenState createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 12, right: 19),
                  child: Row(
                    children: [
                      Text(
                        "Indian Premier League 2020",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,fontFamily: 'SF', fontSize: 14),
                      ),
                      Spacer(),
                      Text(
                        "2h 41m",
                        style: TextStyle(fontFamily: 'SF',color: Colors.red[600]),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12, top: 7, bottom: 9, right: 12),
                  child: _buildMatchRowLine(
                      image: "assets/img/dc.png", title: "DC"),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 12, bottom: 16, right: 12),
                  child: _buildMatchRowLine(
                      image: "assets/img/kkr.png", title: "KRR"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildMatchRowLine({var image, String title}) {
    return Row(
      children: <Widget>[
        Container(
            child: CircleAvatar(
                radius: 19,
                backgroundImage: AssetImage(
                  image,
                ))),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            title,
            style: TextStyle(fontFamily: 'SF',fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Spacer(),
        Text(""),
        Text("")
      ],
    );
  }
}
