import 'package:flutter/material.dart';
import 'package:scorebaazar/screens/scorebored_screen.dart';

class LiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          buildOneCard(context),
          buildOneCard(context),
        ],
      ),
    );
  }

  buildOneCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ScoreBoredScreen()),
        );
      },
      child: Card(
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
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  Spacer(),
                  Icon(
                    Icons.radio_button_checked,
                    size: 18.0,
                    color: Color(0xff2FB846),
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    "Live",
                    style: TextStyle(color: Color(0xff2FB846)),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12, top: 7, bottom: 9, right: 12),
              child: Row(
                children: <Widget>[
                  Container(
                      child: CircleAvatar(
                          radius: 21,
                          backgroundImage: AssetImage(
                            "assets/img/rcb.png",
                          ))),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "RCB",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Spacer(),
                  Text("150/2 "),
                  Text("(16.2)")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 16, right: 12),
              child: buildCardRow(),
            ),
          ],
        ),
      ),
    );
  }

  buildCardRow() {
    return Row(
      children: <Widget>[
        Container(
            child: CircleAvatar(
                radius: 19,
                backgroundImage: AssetImage(
                  "assets/img/rr.png",
                ))),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "RR",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Spacer(),
        Text("220/8 "),
        Text("(20)")
      ],
    );
  }
}
