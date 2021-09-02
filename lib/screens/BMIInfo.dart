import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/TextContainers.dart';
import 'package:photo_view/photo_view.dart';
class BMIInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('BMI', style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Text(
                'What is Body Mass Index (BMI)?',
                style: kBoldBMIInfoText,
              ),
              SizedBox(height: 10,),
              Text(
                'Body Mass Index (BMI) is a measurement of a person’s weight with respect to his or her height. It is more of an indicator than a direct measurement of a person’s total body fat.BMI, more often than not, correlates with total body fat. This means that as the BMI score increases, so does a person’s total body fat.',
                style: kBMIInfoText,
              ),
              SizedBox(height: 50,),
              Container(
                color: Colors.white,
                height: 500,
                width: 500,
                child: PhotoView(
                  imageProvider: AssetImage('assets/bmichart.png'),
                ),
              ),
              SizedBox(height: 60,),
              Text('The WHO defines an adult who has a BMI between 25 and 29.9 as overweight - an adult who has a BMI of 30 or higher is considered obese - a BMI below 18.5 is considered underweight, and between 18.5 to 24.9 a healthy weight .', style: kBMIInfoText,),
              SizedBox(height: 60,),
              Text('BMI calculation',style: kBoldBMIInfoText ),
              Text('BMI in an individual is calculated by the use of a mathematical formula. It can also be estimated using tables in which one can match height in inches to weight in pounds to estimate BMI. There are convenient calculators available on internet sites that help calculate BMI as well.', style: kBMIInfoText,),
              Image(image: AssetImage('assets/table.jpg'),),
              SizedBox(height: 30,),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, '/input');
              }, child: FirstPageContainer(info: 'CALCULATE MY BMI', width: 220,),
              ),
              SizedBox(height: 30,),
              Text('Clinical relevance of BMI', style: kBoldBMIInfoText,),
              Text('BMI is used by healthcare professionals to screen for overweight and obese individuals. The BMI is used to assess a person’s health risks associated with obesity and overweight. For example those with a high BMI are at risk of:-',style: kBMIInfoText,),
              Text(' high blood cholesterol or other lipid, type 2 diabetes, heart disease, stroke, high blood pressure, certain cancers, gallbladder disease, sleep apnea and snoring, premature death, 10. osteoarthritis and joint disease, ', style: kBMIInfoText,),
              SizedBox(height: 30,),
              Text('BMI, however, is one of the tools that are used to calculate healthy risk. Other factors such as blood pressure, cholesterol level, blood sugar level, family history of heart disease, age, gender, waist circumference, level of physical activity, menopause status, smoking status etc. are also taken into consideration while assessing health risk.', style: kBMIInfoText,),
              SizedBox(height: 60,),
              Text('Is BMI applicable for all?',style: kBoldBMIInfoText,),
              Text('For most people, BMI can be used to provide a good measure of obesity. But BMI fails to provide actual information on body composition like amount of muscle, bone, fat, and other tissues.In some persons BMI is a more accurate measure of body fat than others. For example, persons who are very muscular may fall into the “overweight” category when they are actually healthy and very fit. These persons with a very low body fat percentage could have the same BMI score as someone who is overweight.',style: kBMIInfoText,),
              SizedBox(height: 30,),
              Text('Similarly, an elderly and frail individual person may be in the normal weight category when they have little muscle mass and a high percentage of body fat.BMI, when used for children and adolescents who are still growing, those with large body frames or petite builds, pregnant women and highly muscled individuals thus need to be assessed and interpreted carefully.', style: kBMIInfoText,),
              Row(
                children: [
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, '/register');
                  }, child: FirstPageContainer(info: 'TALK TO A DOCTOR', width: 184,),
                  ),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, '/input');
                  }, child: FirstPageContainer(info: 'CALCULATE MY BMI', width: 193,),
                  ),
                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}
