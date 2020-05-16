import 'package:flutter/material.dart';
import 'package:pandeme/widgets/appbar_widget.dart';

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
