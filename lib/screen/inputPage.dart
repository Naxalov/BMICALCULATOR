import 'package:bmi_calculator/screen/icon_content.dart';
import 'package:bmi_calculator/screen/input_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color activeCardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;
//Color(0xFF1D1E33)
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
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: InputCard(
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, lable: 'MALE'),
                    color: activeCardColor,
                  )),
                  Expanded(
                    child: InputCard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        lable: 'FEMALE',
                      ),
                      color: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: InputCard(color: activeCardColor,),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: InputCard(color: activeCardColor,)),
                  Expanded(
                    child: InputCard(color: activeCardColor,),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              height: bottomContainerHeight,
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}


