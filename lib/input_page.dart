import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomBarColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color femaleIconColor = inactiveCardColor;
  Color maleIconColor = inactiveCardColor;
  bool femaleIconActive = false;
  bool maleIconActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Expanded>[
          Expanded(
            child: Row(
              children: <Expanded>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleIconActive
                            ? maleIconActive = false
                            : maleIconActive = true;
                        maleIconActive
                            ? maleIconColor = inactiveCardColor
                            : maleIconColor = activeCardColor;
                      });
                    },
                    child: ReusableCard(
                      colour: maleIconColor,
                      childWidget: new IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        femaleIconActive
                            ? femaleIconActive = false
                            : femaleIconActive = true;
                        femaleIconActive
                            ? femaleIconColor = activeCardColor
                            : femaleIconColor = inactiveCardColor;
                      });
                    },
                    child: ReusableCard(
                      colour: femaleIconColor,
                      childWidget: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Expanded>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: bottomBarColor,
              width: double.infinity,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(
                top: 10.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
