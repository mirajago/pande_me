import 'package:flutter/material.dart';
import 'package:pandeme/screens/game_screen.dart';
import 'package:pandeme/widgets/appbar_widget.dart';
import 'package:pandeme/helpers/colors.dart' as colors;
import 'package:pandeme/widgets/button_filled.dart';


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
          width: MediaQuery.of(context).size.width,
          color: colors.giftGruen,
          child: Center(
            child: Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("PandeME", style: TextStyle(color: colors.black, fontSize: 25, fontWeight: FontWeight.w700)),
                  Container(
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ButtonFilled(text: "Resume Game", onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GameScreen()),
                          );
                        },),
                        ButtonFilled(text: "Start New Game", onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GameScreen()),
                          );
                        },)
                      ],
                    ),
                  ),


                ],
              ),
            ),
          )
      ),
    );
  }
}
