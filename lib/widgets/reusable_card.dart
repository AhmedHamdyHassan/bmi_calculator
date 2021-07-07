import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget childReusableCard;

  const ReusableCard({@required this.cardColor, this.childReusableCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childReusableCard,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(10)),
    );
  }
}
