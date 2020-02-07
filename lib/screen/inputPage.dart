import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body:Container(
        child: Column(
          children: <Widget>[
            Text('Body'),
            FlatButton(
              child: Text('input'), onPressed: () {},
            )
          ],
        ),
      ),
    ) ;
  }
}
