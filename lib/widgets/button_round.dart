import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonRound extends StatefulWidget {
  @override
  _ButtonRoundState createState() => _ButtonRoundState();
}

class _ButtonRoundState extends State<ButtonRound> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 50,
        padding: EdgeInsets.all(20),
        color: Colors.red,
        child: Column(
          children: <Widget>[
            Text(
              "Hey",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text("Ho"),
            Text("Hallelu")
          ],
        )
    );
  }
}