import '../screens/result_screen.dart';
import '../widgets/custom_rounded_button.dart';
import 'package:flutter/material.dart';
import '../widgets/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/card_contant.dart';
import '../models/mbi_calculator.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  HomeScreen({this.title});

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  bool isMalePressed = false;
  bool isFemalePressed = false;
  int height = 180;
  int age = 20;
  int weight = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMalePressed = !isMalePressed;
                        isFemalePressed = false;
                      });
                    },
                    child: ReusableCard(
                      cardColor: isMalePressed
                          ? const Color(0xFF111428)
                          : const Color(0xFF1D1F33),
                      childReusableCard: CardContant(
                        cardIcon: Icon(FontAwesomeIcons.mars, size: 80),
                        lable: Text(
                          'Male',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFemalePressed = !isFemalePressed;
                        isMalePressed = false;
                      });
                    },
                    child: ReusableCard(
                        cardColor: isFemalePressed
                            ? const Color(0xFF111428)
                            : const Color(0xFF1D1F33),
                        childReusableCard: CardContant(
                          cardIcon: Icon(
                            FontAwesomeIcons.venus,
                            size: 80,
                            color: Color(0xFF8D8E98),
                          ),
                          lable: Text(
                            'Female',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF8D8E98)),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: const Color(0xFF111428),
              childReusableCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 18, color: Color(0xFF81838E)),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'cm',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFF81838E)),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF7C7D88),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30,
                      ),
                    ),
                    child: Slider(
                      min: 150,
                      max: 220,
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: const Color(0xFF111428),
                    childReusableCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF81838E)),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomRoundedButton(
                              icon: FontAwesomeIcons.minus,
                              color: Color(0xFFE7E7E9),
                              onPressed: () {
                                if (weight != 0) {
                                  setState(() {
                                    weight--;
                                  });
                                }
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            CustomRoundedButton(
                              icon: FontAwesomeIcons.plus,
                              color: Color(0xFFA4A6AD),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: const Color(0xFF111428),
                    childReusableCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF81838E)),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomRoundedButton(
                              icon: FontAwesomeIcons.minus,
                              color: Color(0xFFE7E7E9),
                              onPressed: () {
                                if (age != 0) {
                                  setState(() {
                                    age--;
                                  });
                                }
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            CustomRoundedButton(
                              icon: FontAwesomeIcons.plus,
                              color: Color(0xFFA4A6AD),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 12,
            child: RaisedButton(
              child: const Text('CALCULATE YOUR BMI'),
              color: const Color(0xFFEB1555),
              onPressed: () {
                MBICalculator data = MBICalculator(
                    age: age,
                    height: height,
                    weight: weight,
                    isMale: (isMalePressed) ? true : false);
                data.getMBIValue();
                Navigator.pushNamed(context, ResultScreen.ResultScreenRoute,
                    arguments: data);
              },
            ),
          ),
        ],
      ),
    );
  }
}
