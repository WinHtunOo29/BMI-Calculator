import 'package:bmi_calculator/views/input_page.dart';
import 'package:flutter/material.dart';

var labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: appColors.textColor(),
);

class IconContent extends StatelessWidget {
  final IconData? icon;
  final String? label;

  const IconContent({
    super.key, this.label, this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 7.5, bottom: 7.5),
        ),
        Text(
          label ?? "",
          style: labelTextStyle, 
        )
      ],
    );
  }
}