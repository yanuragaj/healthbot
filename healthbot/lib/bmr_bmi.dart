// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'background_card.dart';
import 'gender_icon_content.dart';
import 'buttons.dart';
import 'calculations.dart';
import 'bmr_bmi_result.dart';

enum GenderType {
  male,
  female,
}

class BMRBMI extends StatefulWidget {
  @override
  _BMRBMIState createState() => _BMRBMIState();
}

class _BMRBMIState extends State<BMRBMI> {
  GenderType selectedGender;
  int height = 160;
  int weight = 75;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: AssetImage("assets/images/PHBcXT.jpg"),
                fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: BackgroundCard(
                          color: kActiveCardColor,
                          childContainer: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  'WEIGHT',
                                  style: kLabelTextStyle,
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: <Widget>[
                                    Text(
                                      weight.toString(),
                                      style: kNumberStyle,
                                    ),
                                    Text(
                                      'kg',
                                      style: kLabelTextStyle,
                                    )
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RoundedIconButton(
                                        color: Color(0xFF01DC24),
                                        icon: Icons.exposure_minus_1,
                                        action: () {
                                          setState(() {
                                            weight--;
                                            if (weight <= 0) {
                                              weight = 0;
                                            }
                                          });
                                        }),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    RoundedIconButton(
                                        color: Color(0xFF00D1FF),
                                        icon: Icons.plus_one,
                                        action: () {
                                          setState(() {
                                            weight++;
                                          });
                                        }),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: BackgroundCard(
                          color: kActiveCardColor,
                          childContainer: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  'AGE',
                                  style: kLabelTextStyle,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  age.toString(),
                                  style: kNumberStyle,
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RoundedIconButton(
                                        color: Color(0xFF01DC24),
                                        icon: Icons.exposure_minus_1,
                                        action: () {
                                          setState(() {
                                            age--;
                                            if (age <= 0) {
                                              age = 0;
                                            }
                                          });
                                        }),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    RoundedIconButton(
                                        color: Color(0xFF00D1FF),
                                        icon: Icons.plus_one,
                                        action: () {
                                          setState(() {
                                            age++;
                                          });
                                        }),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: BackgroundCard(
                    color: kActiveCardColor,
                    childContainer: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            'HEIGHT',
                            style: kLabelTextStyle,
                          ),
                        ),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                height.toString(),
                                style: kNumberStyle,
                              ),
                              Text(
                                'cm',
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Color(0xFF01DC24),
                            thumbColor: Color(0xFF00D1FF),
                            overlayColor: Color(0x2900D1FF),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                            min: 80.0,
                            max: 240.0,
                            inactiveColor: Color(0xFF8D8E98),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: BackgroundCard(
                          color: selectedGender == GenderType.male
                              ? kActiveCardColor
                              : kInactiveCardColor,
                          childContainer: GenderIconContent(
                            color: Color(0xFF18C0F4),
                            sex: Icons.male,
                            label: 'MALE',
                          ),
                          gesture: () {
                            setState(() {
                              selectedGender = GenderType.male;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: BackgroundCard(
                          color: selectedGender == GenderType.female
                              ? kActiveCardColor
                              : kInactiveCardColor,
                          childContainer: GenderIconContent(
                            color: Color(0xFFF1008F),
                            sex: Icons.female,
                            label: 'FEMALE',
                          ),
                          gesture: () {
                            setState(() {
                              selectedGender = GenderType.female;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Button(
                    color: kBottomButtonColor,
                    text: Text(
                      'CALCULATE',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    onTap: () {
                      if (selectedGender == null) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Warning!!!",
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 25),
                              ),
                              backgroundColor:
                                  Colors.transparent.withOpacity(0.3),
                              contentTextStyle: TextStyle(
                                  color: Colors.white,
                                  backgroundColor:
                                      Colors.transparent.withOpacity(0.1)),
                              content: Text(
                                "You did not choose gender in this beautiful application. It will not work without it.",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Close",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blueAccent),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        Calculator bmi = Calculator(
                            height: height,
                            weight: weight,
                            gender: selectedGender,
                            age: age);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(
                              bmiResult: bmi.calculateBMI(),
                              resultText: bmi.getResult(),
                              interpretation: bmi.getInterpretation(),
                              bmrResult: bmi.calculateBMR(),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
