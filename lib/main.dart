import 'package:bmi_calculator/BMIInfo.dart';
import 'package:bmi_calculator/HomePage.dart';
import 'package:bmi_calculator/ResultsPage.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'Tips.dart';


const primaryColor = Color(0xFF0F1430);
const scaffoldBackground = Color(0xFF0F1430);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        '/result': (context) => ResultPage(),
        '/input': (context) => InputPage(),
        '/home': (context) => HomePage(),
        '/tips': (context) => TipsPage(),
        '/bmiInfo': (context) => BMIInfo(),
      },
    theme: Theme.of(context).copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackground,
    ),
      home: HomePage(),
    );
  }
}

