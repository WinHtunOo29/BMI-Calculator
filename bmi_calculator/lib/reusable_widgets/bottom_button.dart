import 'package:bmi_calculator/helpers/constants.dart';
import 'package:bmi_calculator/views/input_page.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key, required this.onTapped, required this.buttonTitle,
  });

  final VoidCallback onTapped;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        color: appColors.bottomContainerBgColor(),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Text(
          buttonTitle,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}