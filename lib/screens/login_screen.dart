import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandeme/widgets/button_google_sign_in.dart';


class LoginPageScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Login With Google"),
      ),
      body: LoginPageColumnWidget(),
    );
  }
}

class LoginPageColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlutterLogo(
            size: 200,
          ),
          GoogleLoginButton(),
        ],
      ),
    );
  }
}

