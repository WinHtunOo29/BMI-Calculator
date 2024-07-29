import 'package:bmi_calculator/helpers/app_colors.dart';
import 'package:bmi_calculator/reusable_widgets/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../reusable_widgets/resuable_card.dart';
import '../enums/gender_types.dart';
import '../helpers/constants.dart';

AppColors appColors = AppColors();

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    onTapped: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? appColors.activeCardBgColor() : appColors.inactiveCardBgColor(),
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  )
                ),
                Expanded(
                  child: ResuableCard(
                    onTapped: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female ? appColors.activeCardBgColor() : appColors.inactiveCardBgColor(),
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  )
                ),
              ],
            ),
          ),
          Expanded(
            child: ResuableCard(
              colour: appColors.activeCardBgColor(),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT', 
                    style: kLabelTextStyle
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kHeightNumberStyle,
                      ),
                      const Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(), 
                    min: 120,
                    max: 220,
                    activeColor: const Color(0xFFEB1555),
                    inactiveColor: const Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    } 
                  )
                ],
              ),
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
            height: kBottomContainerHeight,
          )
        ],
      )
    );
  }
}