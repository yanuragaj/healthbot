// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'background_card.dart';

class OneRM extends StatefulWidget {
  @override
  _OneRMState createState() => _OneRMState();
}

class _OneRMState extends State<OneRM> {
  var weight = 0;
  var reps = 0;
  double rm=0,
      ninetyFive=0,
      ninety=0,
      eightyFive=0,
      eighty=0,
      seventyFive=0,
      seventy=0,
      sixtyFive=0,
      sixty=0,
      fiftyFive=0,
      fifty=0;

  final fieldText1 = TextEditingController();
  final fieldText2 = TextEditingController();

  void clearText() {
    fieldText1.clear();
    fieldText2.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: AssetImage("assets/images/PHBcXT.jpg"),
                fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
            child: Center(
              child: ListView(
                children: [
                  Column(
                    children: [
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "1 REP MAX CALCULATOR",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/images/1rm.gif",
                        width: MediaQuery.of(context).size.height * 0.25,
                      ),
                      Text(
                        "WEIGHT",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              blurRadius: 30,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                      ),
                      TextField(
                        onChanged: (value) {
                          weight = int.parse(value);
                        },
                        controller: fieldText1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.8,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Colors.black,
                            ),
                          ),
                          hintText: 'enter weight in kg',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Text(
                        "REPS",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              blurRadius: 30,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                      ),
                      TextField(
                        onChanged: (value) {
                          reps = int.parse(value);
                        },
                        controller: fieldText2,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.8,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Colors.black,
                            ),
                          ),
                          hintText: 'enter repetitions',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              rm;
                              ninetyFive;
                              ninety;
                              eightyFive;
                              eighty;
                              seventyFive;
                              seventy;
                              sixtyFive;
                              sixty;
                              fiftyFive;
                              fifty;
                            },
                          );
                          rm = (weight * reps * 0.033) + weight;
                          ninetyFive =
                              double.parse((rm * 0.95).toStringAsFixed(2));
                          ninety = double.parse((rm * 0.90).toStringAsFixed(2));
                          ;
                          eightyFive =
                              double.parse((rm * 0.85).toStringAsFixed(2));
                          ;
                          eighty = double.parse((rm * 0.80).toStringAsFixed(2));
                          ;
                          seventyFive =
                              double.parse((rm * 0.75).toStringAsFixed(2));
                          ;
                          seventy =
                              double.parse((rm * 0.70).toStringAsFixed(2));
                          ;
                          sixtyFive =
                              double.parse((rm * 0.65).toStringAsFixed(2));
                          ;
                          sixty = double.parse((rm * 0.60).toStringAsFixed(2));
                          ;
                          fiftyFive =
                              double.parse((rm * 0.55).toStringAsFixed(2));
                          ;
                          fifty = double.parse((rm * 0.50).toStringAsFixed(2));
                          ;

                          clearText();
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent.withOpacity(0.15),
                              ),
                              padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width * 0.025,
                              ),
                              child: Text(
                                "Calculate",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "Your One-Rep Max: $rm",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "95% Value: $ninetyFive",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "90% Value: $ninety",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "85% Value: $eightyFive",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "80% Value: $eighty",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "75% Value: $seventyFive",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "70% Value: $seventy",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "65% Value: $sixtyFive",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "60% Value: $sixty",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "55% Value: $fiftyFive",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "50% Value: $fifty",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
