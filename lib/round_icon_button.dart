import 'package:flutter/material.dart';

import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;

  RoundIconButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 6.0,
      child: Icon(icon),
      fillColor: kButtonBackgroundColor,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
    );
  }
}
