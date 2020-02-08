import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  final Widget cardChild;
  final Color color;

  InputCard({this.cardChild, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
