import 'package:flutter/material.dart';

import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;

  RoundIconButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      child: Icon(icon),
      fillColor: kButtonBackgroundColor,
      shape: CircleBorder(),
      constraints: BoxConstraints(
        minHeight: 48.0,
        minWidth: 48.0,
      ),
    );
  }
}
