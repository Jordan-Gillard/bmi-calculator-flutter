import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Green Text',
                      style: kWeightClassificationTextStyle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '26.7',
                      style: kResultScreenNumberTextStyle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'You have a higher than normal blah blah blah',
                      textAlign: TextAlign.center,
                      style: kResultsExplanationTextStyle,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
