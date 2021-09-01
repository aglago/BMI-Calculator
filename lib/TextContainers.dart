import 'package:flutter/material.dart';
import 'constants.dart';

class FirstPageContainer extends StatelessWidget {
  final double width;
  final String info;

  FirstPageContainer({@required this.width, @required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      height: 50,
      width: width,
      color: Color(0xFFDD0059),
      child: Center(child: Text(info, style: kFirstPageBottons,)),
    );
  }
}