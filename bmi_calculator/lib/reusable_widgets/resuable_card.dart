import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  final Color colour;
  
  ResuableCard({required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}