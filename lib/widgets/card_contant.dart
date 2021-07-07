import 'package:flutter/material.dart';

class CardContant extends StatelessWidget {
  final Icon cardIcon;
  final Text lable;

  const CardContant({@required this.cardIcon, @required this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        cardIcon,
        SizedBox(
          height: 15,
        ),
        lable,
      ],
    );
  }
}
