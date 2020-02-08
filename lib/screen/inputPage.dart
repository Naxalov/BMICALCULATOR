import 'package:bmi_calculator/screen/constants.dart';
import 'package:bmi_calculator/screen/icon_content.dart';
import 'package:bmi_calculator/screen/input_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


enum GenderType {
  male,
  female,
}

//Color(0xFF1D1E33)
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;

  updateColor(GenderType gender) {
    setState(() {
      selectedGender = gender;
    });
  }

//

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
//              MALE
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: InputCard(
                    onPress: (){
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, lable: 'MALE'),
                    color: selectedGender == GenderType.male
                        ? activeCardColor
                        : inactiveCardColor,
                  )),
                  Expanded(
                    child: InputCard(
                      onPress: (){
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        lable: 'FEMALE',
                      ),
                      color: selectedGender == GenderType.female
                          ? activeCardColor
                          : inactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: InputCard(
                color: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: InputCard(
                    color: activeCardColor,
                  )),
                  Expanded(
                    child: InputCard(
                      color: activeCardColor,
                    ),
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
