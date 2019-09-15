import 'package:flutter/material.dart';

import 'constants.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({@required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/results');
      },
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kBottomBarTextStyle,
          ),
        ),
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomBarColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
