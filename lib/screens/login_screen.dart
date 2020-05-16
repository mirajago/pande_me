import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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

class GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text("Login With Google"),
      color: Colors.blue,
      textColor: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      onPressed: (){
        print("GoogleLoginButton pressed.");

        signIn().whenComplete((){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context){
                //TODO: Return route for when the user has successfully signed in.
              }
          ));
        });
      },
    );
  }
}