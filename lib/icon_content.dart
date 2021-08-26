import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconCardContent extends StatelessWidget {
  final IconData iICon;
  final String tText;
  IconCardContent({required this.iICon, required this.tText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iICon,
          size: 50.0,
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          tText,
          style: kTextContent,
        )
      ],
    );
  }
}
