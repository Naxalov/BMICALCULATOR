import 'package:bmi_calculator/screen/constants.dart';
import 'package:flutter/material.dart';


class IconContent extends StatelessWidget {
  final IconData icon;
  final String lable;

  IconContent({this.icon, this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          lable,
          style: labelTextStyle,
        )
      ],
    );
  }
}
