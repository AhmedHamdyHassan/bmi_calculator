import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Function onPressed;
  CustomRoundedButton({this.icon, this.color, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: color,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF1C1F32),
    );
  }
}
