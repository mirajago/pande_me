import 'package:flutter/material.dart';
import 'package:pandeme/screens/main_menu_screen.dart';
import 'package:pandeme/services/login_handler.dart';
import 'package:pandeme/widgets/appbar_widget.dart';
import 'package:pandeme/helpers/colors.dart' as colors;
import 'package:pandeme/widgets/button_filled.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _registerMode = true;

  final mailController = TextEditingController();
  final pwController = TextEditingController();
  final rpwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: colors.giftGruen,
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _registerMode
                    ? Text("Registering",
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w700))
                    : Text("Sign In",                     style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w700)),
                TextField(
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w700,
                      color: colors.black),
                  controller: mailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                TextField(
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w700,
                      color: colors.black),
                  controller: pwController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                _registerMode
                    ? Column(children: <Widget>[
                        TextField(
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w700,
                              color: colors.black),
                          controller: pwController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Repeat Password',
                          ),
                        ),
                        SizedBox(height: 20),
                        ButtonFilled(
                          onPressed: _register,
                          text: "Register",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                                child: Text("Login instead"),
                                onPressed: () {
                                  setState(() {
                                    _registerMode = false;
                                  });
                                }),
                            FlatButton(
                              onPressed: _startApp,
                              child: Text(
                                ("Play anonymous"),
                              ),
                            ),
                          ],
                        )
                      ])
                    : Column(
                        children: <Widget>[
                          SizedBox(height: 20),
                          ButtonFilled(
                            onPressed: _signIn,
                            text: "Sign In",
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  setState(() {
                                    _registerMode = true;
                                  });
                                },
                                child: Text(
                                  ("Sign in instead"),
                                ),
                              ),
                              FlatButton(
                                onPressed: _startApp,
                                child: Text(
                                  ("Play anonymous"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _register() {
    if (pwController.text == rpwController.text) {
      registerWithEmailAndPassword(mailController.text, pwController.text);
    }
  }

  void _signIn() {
    signIn(mailController.text, pwController.text)
        .then((user) => print(user.mail + " logged in"));
  }

  void _startApp() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainMenuScreen()),
    );
  }
}
