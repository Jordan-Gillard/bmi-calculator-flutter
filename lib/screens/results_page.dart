import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Green Text',
                      style: kResultTextStyle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '26.7',
                      style: kBMITextStyle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'You have a higher than normal blah blah blah',
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  )
                ],
              ),
            ),
          ),
          CalculateButton(
            text: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
