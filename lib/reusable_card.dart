import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colour,
      this.childWidget,
      this.reusableFunction,
      this.params});

  final Color colour;
  final Widget childWidget;
  final Function reusableFunction;
  final params;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        reusableFunction(params);
      },
      child: Container(
        child: childWidget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
