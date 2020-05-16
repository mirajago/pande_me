import 'package:flutter/material.dart';
import 'package:pandeme/helpers/colors.dart' as colors;
import 'package:pandeme/screens/account_screen.dart';
import 'package:pandeme/screens/main_menu_screen.dart';


class AppbarWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
            backgroundColor: colors.saeureGruen,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainMenuScreen()),
                    );
                  },
                  child: Container(
                    height: 45,
                    child: Image.asset('assets/images/logo.png',
                        color: colors.black, fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              Container(
                      child: IconButton(
                        icon: Image.asset('assets/images/account.png', color: colors.black),
                        iconSize: 36,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccountScreen()),
                          );
                        },
                      )),
            ],
            iconTheme: IconThemeData(
              color: colors.white,
              size: 36,
            ),
          );
        }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
