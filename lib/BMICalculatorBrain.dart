import 'dart:math';

import 'package:flutter/cupertino.dart';
class Brain {
  final int weight;
  final int height;
  Brain({@required this.weight,@required this.height});

  double bmi;

  String calculatedBMI(){
    bmi = weight/pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }

  String comment(){
    if(bmi >= 25){
      return 'OVERWEIGHT';
    } else if(bmi >= 18.5){
      return 'NORMAL';
    } else{
      return 'UNDERWEIGHT';
    }
  }

  String interpretation(){
    if(bmi >= 25){
      return 'your bmi is more than normal, please exercise more.';
    } else if(bmi >= 18.5){
      return 'excellent job, keep it up';
    } else{
      return 'Your BMI is BELOW normal, you are UNDERWEIGHT. Do you want tips to eat healthy?';
    }
  }
}