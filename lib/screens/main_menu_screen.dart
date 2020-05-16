import 'package:flutter/material.dart';
import 'package:pandeme/widgets/appbar_widget.dart';


class MainMenuScreen extends StatefulWidget {
  @override
  _MainMenuScreenState createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: Container(
          color: Colors.red,
          child: Column(
            children: <Widget>[
              Container(
                  color: Colors.blue,
                  child: Text("Hey Screen")),
            ],
          )
      ),
    );
  }
}
