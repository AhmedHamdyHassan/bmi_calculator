import '../models/mbi_calculator.dart';
import '../widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  static const String ResultScreenRoute = '/Result_Screen_Route';
  @override
  Widget build(BuildContext context) {
    final MBICalculator calculator = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 20),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ReusableCard(
                cardColor: Color(0xFF1D1F33),
                childReusableCard: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      calculator.getMBIState(),
                      style: TextStyle(fontSize: 18, color: Color(0xFF20A663)),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      calculator.getMBIValue(),
                      style: TextStyle(
                          fontSize: 120,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Column(
                      children: [
                        Text(
                          'Normal BMI Range:',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF747581)),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '18,5 - 25 kg/m2',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        calculator.getLastFeedBack(),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 12,
            child: RaisedButton(
              child: const Text('RE-CALCULATE YOUR BMI'),
              color: const Color(0xFFEB1555),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
