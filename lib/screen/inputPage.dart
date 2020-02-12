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
  int height = 180;
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
//              MALE
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: InputCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, lable: 'MALE'),
                    color: selectedGender == GenderType.male
                        ? inputActiveCardColor
                        : inputInactiveCardColor,
                  )),
                  Expanded(
                    child: InputCard(
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        lable: 'FEMALE',
                      ),
                      color: selectedGender == GenderType.female
                          ? inputActiveCardColor
                          : inputInactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: InputCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style:inputNumberTextStyle),
                        Text('cm'),

                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0)

                      ),
                      child: Slider(
                        value: height.toDouble(),
                        max: 220,
                        min: 120,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (
                            double value) {
                          setState(() {
                            height = value.round();
                          });
                        },),
                    ),
                  ],
                ),
                color: inputActiveCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: InputCard(
                    color: inputActiveCardColor,
                  )),
                  Expanded(
                    child: InputCard(
                      color: inputActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: inputBottomContainerColor,
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
