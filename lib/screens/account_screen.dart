import 'package:flutter/material.dart';
import 'package:pandeme/services/login_handler.dart';
import 'package:pandeme/widgets/appbar_widget.dart';
import 'package:pandeme/helpers/colors.dart' as colors;

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool _registerMode = true;
  void _register() {
    if (pwController.text == rpwController.text) {
      registerWithEmailAndPassword(mailController.text, pwController.text);
    }
  }

  void _signIn() {
    signIn(mailController.text, pwController.text)
        .then((user) => print(user.mail + " logged in"));
  }

  void switchToSignIn() {}

  final mailController = TextEditingController();
  final pwController = TextEditingController();
  final rpwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _registerMode ? Text("Registering") : Text("Sign In"),
            TextField(
              controller: mailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: pwController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            _registerMode
                ? Column(children: <Widget>[
                    TextField(
                      controller: pwController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Repeat Password',
                      ),
                    ),
                    RaisedButton(
                      onPressed: _register,
                      child: Text("Register"),
                    ),
                    FlatButton(
                        child: Text("Already have an account?"),
                        onPressed: () {
                          setState(() {
                            _registerMode = false;
                          });
                        })
                  ])
                : Column(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: _signIn,
                        child: Text("Sign In"),
                      ),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            _registerMode = true;
                          });
                        },
                        child: Text(
                          ("Don't have an account?"),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
