import 'package:bmi_calculator/helpers/constants.dart';
import 'package:bmi_calculator/reusable_widgets/bottom_button.dart';
import 'package:bmi_calculator/reusable_widgets/resuable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/helpers/app_colors.dart';

AppColors appColors = AppColors();

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(         
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              colour: appColors.activeCardBgColor(),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: const TextStyle(
                      color: Color(0xFF24D876),
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              onTapped: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE',
            ),
          )
        ],
      ),
    );
  }
}