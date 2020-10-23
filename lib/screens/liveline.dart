import 'package:flutter/material.dart';

class LiveLineScreen extends StatefulWidget {
  @override
  _LiveLineScreenState createState() => _LiveLineScreenState();
}

class _LiveLineScreenState extends State<LiveLineScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Column(
          children: [
            Card(
              elevation: 0.8,
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "RCB",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.5,
                                  fontFamily: 'SF'),
                            ),
                            SizedBox(width: 25),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: "56-0",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: 'SF'),
                              ),
                              TextSpan(
                                  text: "(5.2)",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'SF')),
                            ])),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              "Favourite: ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF',
                                  fontSize: 18),
                            ),
                            Text(
                              "RCB",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF',
                                  fontSize: 16),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "MI   192-5(20)",
                          style: TextStyle(
                              fontSize: 19,
                              height: 1,

                              fontFamily: 'SF',
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(height: 7),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "10.24",
                                  style: TextStyle(
                                    fontFamily: 'SF',
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 1),
                                Text(
                                  "CRR",
                                  style: TextStyle(
                                    fontFamily: 'SF',
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "12.54",
                                  style: TextStyle(
                                    fontFamily: 'SF',
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 1),
                                Text(
                                  "RRR",
                                  style: TextStyle(
                                    fontFamily: 'SF',
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 3),
            Card(
              child: Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child:
                                  Text("Match Will Start at \n 3:30 PM Today",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'SF',
                                        fontWeight: FontWeight.w400,
                                      )),
                            ),
                          )),
                      VerticalDivider(color: Colors.black.withOpacity(0.5)),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('35 - 20',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontFamily: 'SF',
                                    fontWeight: FontWeight.w400)),
                            SizedBox(height: 10),
                            Text(
                              "ODDS",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'SF',
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 3),
            Card(
              child: Container(
                // color: Colors.red,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'SESSION :',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'SF',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "88 - 90",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontFamily: 'SF',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(color: Colors.black.withOpacity(0.5)),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'R  X  B :',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'SF',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "15 - 55",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontFamily: 'SF',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 3),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Last 6 Balls  : ",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'SF',
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildLastBallContainer(),
                            SizedBox(width: 10),
                            buildLastBallContainer(),
                            SizedBox(width: 10),
                            buildLastBallContainer(),
                            SizedBox(width: 10),
                            buildLastBallContainer(),
                            SizedBox(width: 10),
                            buildLastBallContainer(),
                            SizedBox(width: 10),
                            buildLastBallContainer(),
                            SizedBox(width: 10),
                            buildLastBallContainer(),
                            SizedBox(width: 10),
                            buildLastBallContainer(),

                          ],
                        ),
                      ),
                    ),
                    // SizedBox(width: 3),
                  ],
                ),
              ),
            ),
            SizedBox(height: 3),
            Card(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      color: Colors.grey[200],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: bastmanTitleText(5,
                                title: "Batsman", fontSize: 15),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 25),
                            child:
                                bastmanTitleText(0, title: "  R", fontSize: 13),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 25),
                            child: bastmanTitleText(0,
                                title: "   B", fontSize: 13),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 25),
                            child:
                                bastmanTitleText(0, title: " 4s", fontSize: 13),
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 25),
                              child: bastmanTitleText(0,
                                  title: "6s", fontSize: 13)),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: bastmanTitleText(0,
                                title: "  SR", fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: bastmanTitleText(5,
                                title: "Prithvi Shaw", fontSize: 14),
                          ),
                          bastmanNameText(
                            title: "35",
                            right: 25,
                          ),
                          bastmanNameText(
                            title: "19",
                            right: 25,
                          ),
                          bastmanNameText(
                            title: "14",
                            right: 25,
                          ),
                          bastmanNameText(
                            title: "2",
                            right: 25,
                          ),
                          bastmanNameText(
                            title: "184.2",
                            right: 8,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: bastmanTitleText(5,
                                title: "Shikhar Dhawan", fontSize: 14),
                          ),
                          bastmanNameText(
                            title: "60",
                            right: 25,
                          ),
                          bastmanNameText(
                            title: "30",
                            right: 25,
                          ),
                          bastmanNameText(
                            title: "10",
                            right: 25,
                          ),
                          bastmanNameText(
                            title: "5",
                            right: 25,
                          ),
                          bastmanNameText(
                            title: "101.2",
                            right: 9,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      color: Colors.grey[200],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: bastmanTitleText(5,
                                title: "Bowler", fontSize: 15),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 25),
                            child:
                                bastmanTitleText(0, title: "  O", fontSize: 13),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 25),
                            child: bastmanTitleText(0,
                                title: "   M", fontSize: 13),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 25),
                            child:
                                bastmanTitleText(0, title: "  R", fontSize: 13),
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 25),
                              child: bastmanTitleText(0,
                                  title: " W", fontSize: 13)),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: bastmanTitleText(
                              0,
                              title: "  ER",
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                              child: bastmanTitleText(5,
                                  title: "Washington Sundar", fontSize: 14)),
                          bowlerNameText(title: "2.2", right: 30),
                          bowlerNameText(title: "0", right: 30),
                          bowlerNameText(title: "9", right: 30),
                          bowlerNameText(title: "0", right: 30),
                          bowlerNameText(title: "3.9", right: 13),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bastmanTitleText(double left2,
      {var title, int flexSize, double fontSize}) {
    return Padding(
      padding: EdgeInsets.only(left: left2),
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: 'SF',
        ),
        maxLines: 1,
        overflow: TextOverflow.clip,
        softWrap: true,
      ),
    );
  }

  Widget bowlerTitleText({var title, double right}) {
    return Padding(
      padding: EdgeInsets.only(right: right),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'SF',
        ),
      ),
    );
  }

  Widget bowlerNameText({var title, double right}) {
    return Padding(
      padding: EdgeInsets.only(right: right),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'SF',
        ),
      ),
    );
  }

  Widget bastmanNameText({var title, double right}) {
    return Padding(
      padding: EdgeInsets.only(right: right),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'SF',
        ),
      ),
    );
  }

  Widget buildLastBallContainer() {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey[400],
            width: 2.5,
          )),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '1',
          style: TextStyle(
            fontSize: 17,
            fontFamily: 'SF',
          ),
        ),
      ),
    );
  }
}
