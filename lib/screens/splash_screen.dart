import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:pandeme/screens/login_screen.dart';
import 'main_menu_screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _startApp('tapped');
      },
      child: FlareActor(
        "assets/animations/animation.flr",
        alignment: Alignment.center,
        fit: BoxFit.cover,
        callback: _startApp,
        animation: "Untitled",
      ),
    );
  }

  void _startApp(String status){
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => LoginScreen()),
    );
  }

}
