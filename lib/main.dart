import 'package:bmi_calculator/screens/BMIInfo.dart';
import 'package:bmi_calculator/screens/ChatDoc.dart';
import 'package:bmi_calculator/screens/HomePage.dart';
import 'package:bmi_calculator/screens/RegisterDoc.dart';
import 'package:bmi_calculator/screens/ResultsPage.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/Tips.dart';


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
        '/register': (context) => RegisterDoc(),
        '/chat': (context) =>ChatDoc()
      },
    theme: Theme.of(context).copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackground,
    ),
      home: HomePage(),
    );
  }
}

