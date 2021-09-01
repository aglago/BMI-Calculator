import 'package:flutter/material.dart';

class PlusAndMinus extends StatelessWidget {
  final child;
  final Function onPressed;

  PlusAndMinus({this.child, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 80.0,
        height: 80.0,
      ),
      elevation: 6.0,
      child: child,
    );
  }
}
