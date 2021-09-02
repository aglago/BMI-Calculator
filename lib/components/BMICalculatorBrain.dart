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
    if(bmi >= 40){
      return 'EXTREMELY OBESE';
    }
    else if(bmi >= 30){
      return 'OBESE';
    }
    else if(bmi >= 25){
      return 'OVERWEIGHT';
    } else if(bmi >= 18.5){
      return 'NORMAL';
    } else{
      return 'UNDERWEIGHT';
    }
  }

  String interpretation(){
    if(bmi >= 40){
      return 'You are EXTREMELY OBESE and have high risk of heart disease and stroke, type 2 diabetes, musculoskeletal disorders like osteoarthritis, and some cancers (endometrial, breast and colon). Do you want tips to improve your health?';
    }
    else if(bmi >= 30){
      return 'You are OBESE and have high risk of heart disease and stroke, type 2 diabetes, musculoskeletal disorders like osteoarthritis, and some cancers (endometrial, breast and colon). Do you want tips to improve your health?';
    }
    else if(bmi >= 25){
      return 'Your BMI is ABOVE than normal,you are OVERWEIGHT. You may have high risk of heart disease and stroke, type 2 diabetes, musculoskeletal disorders like osteoarthritis, and some cancers (endometrial, breast and colon). Do you want tips to improve your health?';
    } else if(bmi >= 18.5){
      return 'Excellent job, keep it up. Do you want tips to maintain your health?';
    } else{
      return 'Your BMI is BELOW normal, you are UNDERWEIGHT.You may have high risks of Osteoporosis, Skin, hair, or teeth problems, Anemia, Premature births, Slow or impaired growth. Do you want tips to improve your health?';
    }
  }
}