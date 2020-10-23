import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Khai Lagai Calculator"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 30),

                  child: Text(
                    "  KHAI  LAGAI  \nCALCULATOR",
                    style: TextStyle(
                        fontFamily: "SF", fontSize: 30, letterSpacing: 0.5, fontWeight: FontWeight.w600),
                  )),
              Container(
                width: size.width * 0.9,
                height: 55,
                margin: EdgeInsets.symmetric(vertical: 1),
                child: TextFormField(
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(),
                      hintText: "Enter First Team",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text("VS",
                    style: TextStyle(fontFamily: "SF", fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                width: size.width * 0.8,
                height: 55,
                margin: EdgeInsets.symmetric(vertical: 1),
                child: TextFormField(
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(),
                      hintText: "Enter Secound Team",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextFormField(
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(),
                      hintText: "Secound First Team",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ),*/
              SizedBox(height: 30),
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 115, vertical: 20),
                color: Colors.grey[200],
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Text(
                  "PLAY SESSION",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15),
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 110, vertical: 20),
                color: Colors.grey[200],
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Text(
                  "SAVE MATCHES",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15),
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 105, vertical: 20),
                color: Colors.grey[200],
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Text(
                  "PLAY KHAILAGAI",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
