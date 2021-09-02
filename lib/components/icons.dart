import 'package:flutter/material.dart';
import 'constants.dart';
class ColumnData1 extends StatelessWidget {
  final IconData icon;
  final String info;
  ColumnData1({this.icon,this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Color(0xFFEAEDF7),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          info,
          style: kLabelTextStyle
        )
      ],
    );
  }
}
