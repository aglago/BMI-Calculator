import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'TextContainers.dart';

class ResultPage extends StatelessWidget {
  final String bmiNumber;
  final String comment;
  final String interpretation;

  ResultPage(
      {@required this.bmiNumber,
      @required this.comment,
      @required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Text(
              'Your Result',
              style: kNumberTextStyle,
            )),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      comment,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiNumber,
                      style: kResultNumberTextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kCommentTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/tips');
                            },
                            child: FirstPageContainer(
                                width: 160, info: 'ABSOLUTELY!')),
                      ],
                    )
                  ],
                ),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: kActiveCardColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                margin: EdgeInsets.only(top: kContainerMarginTop),
                color: Color(0xFFDD0059),
                height: kBottomContainerHeight,
                width: double.infinity,
              ),
            ),
          ],
        ));
  }
}
