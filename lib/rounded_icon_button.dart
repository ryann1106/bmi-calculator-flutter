import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({Key? key, required this.icon, required this.onPress})
      : super(key: key);
  final IconData icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      fillColor: Color(0xff4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 53.0,
        height: 53.0,
      ),
      shape: CircleBorder(),
      child: Icon(icon),
    );
  }
}
