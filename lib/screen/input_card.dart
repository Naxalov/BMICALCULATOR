import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  final Widget cardChild;
  final Color color;

  final Function onPress;

  InputCard({this.cardChild, this.color,this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
