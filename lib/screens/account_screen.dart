import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandeme/widgets/button_round.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(
          children: <Widget>[
            Text("Hey Screen"),
            ButtonRound(),
          ],
        )
      ),
    );
  }
}
