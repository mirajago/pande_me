import 'package:flutter/material.dart';
import 'package:pandeme/widgets/appbar_widget.dart';
import 'package:pandeme/helpers/colors.dart' as colors;

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: Container(
          width: MediaQuery.of(context).size.width,
          color: colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  color: colors.purpurRot,
                  child: Text("Account")),
            ],
          )
      ),
    );
  }
}
