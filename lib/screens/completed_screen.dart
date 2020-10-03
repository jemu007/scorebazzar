import 'package:flutter/material.dart';

class CompletedScreen extends StatefulWidget {
  @override
  _CompletedScreenState createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
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
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      Spacer(),
                      Text(
                        "Completed",
                        style: TextStyle(color: Color(0xff2FB846)),
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
                  child: Row(
                    children: <Widget>[
                      Container(
                          child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(
                                "assets/img/srh.png",
                              ))),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "SRH",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Spacer(),
                      Text("164/3(20)")
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 12, bottom: 16, right: 12),
                  child: Row(
                    children: <Widget>[
                      Container(
                          child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 25,
                              backgroundImage: AssetImage(
                                "assets/img/csk.png",
                              ))),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "CSK",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Spacer(),
                      Text("157/5(20)")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
