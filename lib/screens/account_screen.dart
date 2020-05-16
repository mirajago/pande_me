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
          color: colors.giftGruen,
          child: Center(
            child: Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Me @ PandeME", style: TextStyle(color: colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
                  Container(
                    height: 120,
                    width:  MediaQuery.of(context).size.width * 0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Name >> ", style: TextStyle(color: colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                            Text("Maxine Muster", style: TextStyle(color: colors.black, fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Email >> ", style: TextStyle(color: colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                            Text("maxine@gmail.com", style: TextStyle(color: colors.black, fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Password >> ", style: TextStyle(color: colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                            Text("***********", style: TextStyle(color: colors.black, fontSize: 20, fontWeight: FontWeight.bold))
                          ],
                        ),
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
