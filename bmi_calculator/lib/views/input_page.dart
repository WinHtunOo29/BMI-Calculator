import 'package:bmi_calculator/helpers/app_colors.dart';
import 'package:bmi_calculator/reusable_widgets/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../reusable_widgets/resuable_card.dart';

const bottomContainerHeight = 80.0;
AppColors appColors = AppColors();

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardBgColor = appColors.inactiveCardBgColor();
  Color femaleCardBgColor = appColors.inactiveCardBgColor();

  void updateCardColor(int gender) {
    switch (gender) {
      case 1: 
        if (maleCardBgColor == appColors.inactiveCardBgColor()) {
          maleCardBgColor = appColors.activeCardBgColor();
          femaleCardBgColor = appColors.inactiveCardBgColor();
        } else {
          maleCardBgColor = appColors.inactiveCardBgColor();
        }

      case 2:
        if (femaleCardBgColor == appColors.inactiveCardBgColor()) {
          femaleCardBgColor = appColors.activeCardBgColor();
          maleCardBgColor = appColors.inactiveCardBgColor();
        } else {
          femaleCardBgColor = appColors.inactiveCardBgColor();
        }
    } 
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCardColor(1);
                      });
                    },
                    child: ResuableCard(
                      colour: maleCardBgColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  )
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCardColor(2);
                      });
                    },
                    child: ResuableCard(
                      colour: femaleCardBgColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  )
                ),
              ],
            ),
          ),
          Expanded(
            child: ResuableCard(
              colour: appColors.activeCardBgColor(),
            )
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    colour: appColors.activeCardBgColor(),
                  )
                ),
                Expanded(
                  child: ResuableCard(
                    colour: appColors.activeCardBgColor(),
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