import 'package:bmi_calculator/constants.dart';
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
              style: kResultScreenTextStyle,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                color: kActiveCardColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              margin: EdgeInsets.all(15.0),
              child: Column(
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
