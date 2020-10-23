import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScoreBoared extends StatefulWidget {
  @override
  _ScoreBoaredState createState() => _ScoreBoaredState();
}

class _ScoreBoaredState extends State<ScoreBoared> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ExpansionTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    "Chennai Super Kings",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, fontFamily: "SF",letterSpacing: 0.7),
                    textAlign: TextAlign.left,
                  ),
                ),
                Flexible(
                  child: Text(
                    "125-5(20.0)",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, fontFamily: "SF", letterSpacing: 0.7),
                    textAlign: TextAlign.left,
                  ),
                ),

              ],
            ),
            children: [
              _matchDetails(),
              _otherDetails(),
              _bowlerDetails(),
              Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
                    width: double.infinity,
                    color: Colors.black12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: _text(text: "Fall of Wickets")),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _text(text: "Scores"),
                              _text(text: "Over"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  _playerOut(name: "du Plessis", score: "13-1", over: 2.6),
                  Divider(),
                  _playerOut(name: "Watson", score: "26-2", over: 3.6),
                  Divider(),
                  _playerOut(name: "Sam Curran", score: "53-3", over: 8.2),
                  Divider(),
                  _playerOut(name: "Rayudu", score: "56-4", over: 9.6),
                  Divider(),
                  _playerOut(name: "Dhoni", score: "107-5", over: 17.4),
                  SizedBox(height: 8),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
                    width: double.infinity,
                    color: Colors.black12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: _text(text: "Power Play")),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _text(text: "Over"),
                              _text(text: "Runs ", textAlign: TextAlign.right),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  _playerOut(name: "mandatory", score: "0.1 - 6.0", over: 43),
                  SizedBox(height: 8),
                ],
              )
            ],
          ),
          ExpansionTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    "Rajasthan Royals",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, fontFamily: "SF", letterSpacing: 0.7),
                    textAlign: TextAlign.left,
                  ),
                ),
                Flexible(
                  child: Text(
                    "126-3(27.3)",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, fontFamily: "SF", letterSpacing: 0.7),
                    textAlign: TextAlign.left,

                  ),
                ),
              ],
            ),
            children: [
              _matchDetails(),
              _otherDetails(),
              _bowlerDetails(),
              Column(
                children: [
                  Container(
                    padding:
                    const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
                    width: double.infinity,
                    color: Colors.black12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: _text(text: "Fall of Wickets")),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _text(text: "Scores"),
                              _text(text: "Over"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  _playerOut(name: "du Plessis", score: "13-1", over: 2.6),
                  Divider(),
                  _playerOut(name: "Watson", score: "26-2", over: 3.6),
                  Divider(),
                  _playerOut(name: "Sam Curran", score: "53-3", over: 8.2),
                  Divider(),
                  _playerOut(name: "Rayudu", score: "56-4", over: 9.6),
                  Divider(),
                  _playerOut(name: "Dhoni", score: "107-5", over: 17.4),
                  SizedBox(height: 8),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding:
                    const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
                    width: double.infinity,
                    color: Colors.black12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: _text(text: "Power Play")),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _text(text: "Over"),
                              _text(text: "Runs ", textAlign: TextAlign.right),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  _playerOut(name: "mandatory", score: "0.1 - 6.0", over: 43),
                  SizedBox(height: 8),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _bowlerDetails() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
          width: double.infinity,
          color: Colors.black12,
          child: Row(
            children: [
              Expanded(flex: 4, child: _text(text: "Bowler")),
              Expanded(flex: 1, child: _text(text: "O")),
              Expanded(flex: 1, child: _text(text: "M")),
              Expanded(flex: 1, child: _text(text: "R")),
              Expanded(flex: 1, child: _text(text: "W")),
              Expanded(flex: 1, child: _text(text: "ER")),
            ],
          ),
        ),
        SizedBox(height: 10),
        _bowlerName(bName: "Jofra Archer", o: 4, m: 0, r: 20, w: 1, er: 5),
        Divider(),
        _bowlerName(bName: "Rajpoot", o: 1, m: 0, r: 8, w: 0, er: 8),
        Divider(),
        _bowlerName(bName: "Kartik Tyagi", o: 4, m: 0, r: 35, w: 1, er: 8.80),
        Divider(),
        _bowlerName(bName: "Stokes", o: 3, m: 0, r: 27, w: 0, er: 9),
        Divider(),
        _bowlerName(bName: "Shreyas Gopal", o: 4, m: 0, r: 14, w: 1, er: 3.50),
        Divider(),
        _bowlerName(bName: "Rahul Tewatia", o: 4, m: 0, r: 18, w: 1, er: 4.50),
        SizedBox(height: 8)
      ],
    );
  }

  Widget _otherDetails() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _text(text: "Extras", fontWeight: FontWeight.w600),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _text(text: "5",fontWeight: FontWeight.bold),
                    _text(text: "b 1"),
                    _text(text: "lb 2"),
                    _text(text: "w 1"),
                    _text(text: "nb 1"),
                    _text(text: "p 0"),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _text(
                text: "Total",
                fontWeight: FontWeight.w600,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: _text(text: "125-5(20.0)", fontWeight: FontWeight.bold, letterSpacing: 0.5),
              ),
            ],
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _text(text: "Did not bat", fontWeight: FontWeight.bold, letterSpacing: 0.5),
              SizedBox(height: 5),
              Row(
                children: [
                  _text(text: "Chawla, "),
                  _text(text: "Thakur, "),
                  _text(text: "Hazelwood"),
                ],
              )
            ],
          ),
          SizedBox(height: 7),
        ],
      ),
    );
  }

  Widget  _text(
      {String text, double size, FontWeight fontWeight, TextAlign textAlign, double letterSpacing}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "SF",
        fontSize: size,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing
      ),
      textAlign: textAlign,
    );
  }

  Widget _matchDetails() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
          width: double.infinity,
          color: Colors.black12,
          child: Row(
            children: [
              Expanded(flex: 4, child: _text(text: "Bastman")),
              Expanded(flex: 1, child: _text(text: "R")),
              Expanded(flex: 1, child: _text(text: "B")),
              Expanded(flex: 1, child: _text(text: "4s")),
              Expanded(flex: 1, child: _text(text: "6s")),
              Expanded(flex: 1, child: _text(text: "SR")),
            ],
          ),
        ),
        SizedBox(height: 10),
        _bastmanName(
            bName: "Sam Curran",
            oDetail: "c Jos Buttler b Jofra Archer",
            r: 22,
            b: 25,
            s4: 0,
            s6: 2,
            sr: 88.44),
        Divider(),
        _bastmanName(
            bName: "du Plessis",
            oDetail: "c Jos Buttler b Jofra Archer",
            r: 10,
            b: 9,
            s4: 0,
            s6: 2,
            sr: 214.44),
        Divider(),
        _bastmanName(
            bName: "Watson",
            oDetail: "c Rahul Tewatia b Kartik Tyagi",
            r: 8,
            b: 3,
            s4: 0,
            s6: 2,
            sr: 414.44),
        Divider(),
        _bastmanName(
            bName: "Rayudu",
            oDetail: "c Samson b Rahul Tewatia",
            r: 13,
            b: 19,
            s4: 2,
            s6: 0,
            sr: 68.42),
        Divider(),
        _bastmanName(
            bName: "Dhoni (c) (wk)",
            oDetail: "run out (Jofra Archer/Samson)",
            r: 28,
            b: 28,
            s4: 2,
            s6: 0,
            sr: 100.00),
        Divider(),
        _bastmanName(
            bName: "Ravindra Jadeja",
            oDetail: "not out",
            r: 35,
            b: 30,
            s4: 4,
            s6: 0,
            sr: 116.67),
        Divider(),
        _bastmanName(
            bName: "Kedar Jadhav",
            oDetail: "not out",
            r: 4,
            b: 7,
            s4: 0,
            s6: 2,
            sr: 57.14),
        Divider(),
      ],
    );
  }

  Widget _bastmanName({String bName, String oDetail, int r, b, s4, s6, sr}) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0,right: 5),
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(bName, style: TextStyle(fontSize: 14, fontFamily: "SF")),
                  SizedBox(height: 6),
                  Text(oDetail,
                      style: TextStyle(fontSize: 11, fontFamily: "SF")),
                ],
              )),
          Expanded(
              flex: 1, child: Text("$r", style: TextStyle(fontFamily: "SF",fontWeight: FontWeight.bold))),
          Expanded(
              flex: 1, child: Text("$b", style: TextStyle(fontFamily: "SF"))),
          Expanded(
              flex: 1, child: Text("$s4", style: TextStyle(fontFamily: "SF"))),
          Expanded(
              flex: 1, child: Text("$s6", style: TextStyle(fontFamily: "SF"))),
          Expanded(
              flex: 1, child: Text("$sr", style: TextStyle(fontFamily: "SF"))),
        ],
      ),
    );
  }

  Widget _bowlerName({String bName, int o, m, r, w, er}) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(bName, style: TextStyle(fontSize: 14, fontFamily: "SF")),
                ],
              )),
          Expanded(
              flex: 1, child: Text("$o", style: TextStyle(fontFamily: "SF"))),
          Expanded(
              flex: 1, child: Text("$m", style: TextStyle(fontFamily: "SF"))),
          Expanded(
              flex: 1, child: Text("$r", style: TextStyle(fontFamily: "SF"))),
          Expanded(
              flex: 1, child: Text("$w", style: TextStyle(fontFamily: "SF", fontWeight: FontWeight.bold))),
          Expanded(
              flex: 1, child: Text("$er", style: TextStyle(fontFamily: "SF"))),
        ],
      ),
    );
  }

  Widget _playerOut({String name, String score, double over}) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 0, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: _text(text: name)),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _text(text: score),
                _text(text: "$over"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
