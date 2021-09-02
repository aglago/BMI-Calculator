import 'package:flutter/material.dart';
import '../components/TextContainers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bmiInfo');
                },
                child: FirstPageContainer(
                  width: 200,
                  info: 'WHAT IS BMI ?',
                )),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/input');
              },
              child: FirstPageContainer(
                width: 260,
                info: 'CALCULATE MY BMI',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tips');
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    FirstPageContainer(
                      width: 360,
                      info: 'TIPS TO KEEP BMI AT NORMAL',
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
