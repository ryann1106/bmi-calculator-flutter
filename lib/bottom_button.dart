import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final onPress;
  final buttonText;
  BottomButton({required this.onPress, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(
          top: 15.0,
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
