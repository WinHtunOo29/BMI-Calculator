import 'package:bmi_calculator/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'reusable_widgets/resuable_card.dart';

const bottomContainerHeight = 80.0;
AppColors appColors = AppColors();

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    colour: appColors.cardBgColor(),
                  )
                ),
                Expanded(
                  child: ResuableCard(
                    colour: appColors.cardBgColor(),
                  )
                ),
              ],
            ),
          ),
          Expanded(
            child: ResuableCard(
              colour: appColors.cardBgColor(),
            )
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    colour: appColors.cardBgColor(),
                  )
                ),
                Expanded(
                  child: ResuableCard(
                    colour: appColors.cardBgColor(),
                  )
                ),
              ],
            ),
          ),
          Container(
            color: appColors.bottomContainerBgColor(),
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      )
    );
  }
}