import 'package:bmi_calculator/constants.dart';
import '../components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_large_button.dart';

class ResultPage extends StatelessWidget {

  final String result;
  final String bmi;
  final String interpretation;

  ResultPage({@required this.bmi, @required this.result, @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kResultTitleTextStyle,
                ),
                color: Color(0xFF0A0E21),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmi,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kResultBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            LargeButton(
                title: 'RE-CALCULATE',
                onPress: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
