import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  final Color? colour;
  final Widget? cardChild;
  final VoidCallback? onTapped;
  
  const ResuableCard({super.key, this.colour, this.cardChild, this.onTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}