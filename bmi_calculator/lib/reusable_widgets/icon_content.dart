import 'package:flutter/material.dart';
import '../helpers/constants.dart';

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
          style: kLabelTextStyle 
        )
      ],
    );
  }
}