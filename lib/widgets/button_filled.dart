import 'package:flutter/material.dart';
import 'package:pandeme/helpers/colors.dart' as colors;


class ButtonFilled extends StatelessWidget {
  final String text;
  final Function onPressed;

  ButtonFilled({
    Key key,
    @required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        padding: EdgeInsets.zero,
        child: Ink(
          decoration: BoxDecoration(
            color: colors.apfelGruen,
            borderRadius: BorderRadius.circular(3)
          ),
          child: Container(
            constraints: BoxConstraints(maxWidth: 250, minHeight: 43),
            padding: EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: colors.black),
            ),
          ),
        ),
      ),
    );
  }
}