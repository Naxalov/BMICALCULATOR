import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
//        Gender
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.black12,
                      child: Icon(
                        FontAwesomeIcons.mars,
                        color: Colors.white,
                        size: 50.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.black12,
                      child: Icon(
                        FontAwesomeIcons.venus,
                        color: Colors.white,
                        size: 50.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
//          Height
          Expanded(
            child: Card(
              color: Colors.black12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '175',
                    style: TextStyle(fontSize: 60.0, color: Colors.white),
                  ),
                  Slider(
                    value: 0,
                    onChanged: (double value) {},
                    min: 0,
                    max: 100,
                    activeColor: Colors.red,


                  )
                ],
              ),
            ),
          ),

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Weight',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Text(
                        '99',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          'AGE',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Text(
                        '99',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              color: Colors.red,
              child: Text(
                'CALCULATE',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
