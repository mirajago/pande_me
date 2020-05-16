import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandeme/utility_methods/google_sign_in_methods.dart';

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
      onPressed: () {
        print("GoogleLoginButton pressed.");

        signInWithGoogle().whenComplete(() {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                //TODO: Return the page for  when the user signed in.
              }
          ));
        });
      },
    );
  }
}
