import 'package:flutter/material.dart';

class ReusedCard extends StatelessWidget {
  final Color colour;
  final Widget? bodyContainerChild;
  final VoidCallback? onPress;

  ReusedCard({required this.colour, this.bodyContainerChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: bodyContainerChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
