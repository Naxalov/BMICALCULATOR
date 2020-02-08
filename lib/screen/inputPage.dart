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
                        lable: 'FAMEL',
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
          ],
        ),
      ),
    );
  }
}

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

class IconContent extends StatelessWidget {
  final IconData icon;
  final String lable;

  IconContent({this.icon, this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
