// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeightLoss extends StatefulWidget {
  const WeightLoss({key}) : super(key: key);

  @override
  _WeightLossState createState() => _WeightLossState();
}

class _WeightLossState extends State<WeightLoss> {
  final fieldText1 = TextEditingController();
  final fieldText2 = TextEditingController();
  final fieldText3 = TextEditingController();
  final fieldText4 = TextEditingController();
  final fieldText5 = TextEditingController();

  void clearText() {
    fieldText1.clear();
    fieldText2.clear();
    fieldText3.clear();
    fieldText4.clear();
    fieldText5.clear();
  }

  var x1;
  var x2;
  var x3;
  var x4;
  var x5;

  dietModelAPI() async {
    var url = Uri.http("65.2.146.188:31461", "/cgi-bin/predct.py",
        {"x1": "$x1", "x2": "$x2", "x3": "$x3", "x4": "$x4", "x5": "$x5"});
    var response = await http.get(url);
    print(response.body);
    var op = response.body;

    print(url);
    var dietType = " ";

    print(op[184]);
    print(op[184].runtimeType);
    if (op[184] == "0") {
      dietType = "DASH DIET";
    }
    if (op[184] == "1") {
      dietType = "VEGAN DIET";
    }
    if (op[184] == "2") {
      dietType = "INTERMITTENT FAST";
    }

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.transparent.withOpacity(0.1),
          contentTextStyle: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.transparent.withOpacity(0.1)),
          content: Text(
            "SUGGESTED DIET TYPE: $dietType",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        );
      },
    );
    await Future.delayed(Duration(seconds: 2));
    if (dietType == "DASH DIET") Navigator.pushNamed(context, "dash");
    if (dietType == "VEGAN DIET") Navigator.pushNamed(context, "vegan");
    if (dietType == "INTERMITTENT FAST") Navigator.pushNamed(context, "IF");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          // margin: EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: AssetImage("assets/images/PHBcXT.jpg"),
                fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                        // ignore: prefer_const_literals_to_create_immutables
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Text(
                              "WEIGHT LOSS",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.08,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(60),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width * 0.95,
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.height * 0.01),
                        child: ListView(
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/loss2.gif",
                                  width:
                                      MediaQuery.of(context).size.height * 0.3,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                Text(
                                  "ENTER AGE",
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.06,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        blurRadius: 30,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                TextField(
                                  onChanged: (value) {
                                    x1 = int.parse(value);
                                    print(x1);
                                  },
                                  controller: fieldText1,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1.5,
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: 'age',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                Text(
                                  "DO YOU HAVE BLOODPRESSURE PROBLEM?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.06,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        blurRadius: 30,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                TextField(
                                  onChanged: (value) {
                                    if (value == "yes") {
                                      x3 = 1;
                                    } else {
                                      x3 = 0;
                                    }
                                  },
                                  controller: fieldText2,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1.5,
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: 'yes or no',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                Text(
                                  "DO YOU HAVE DIABETES PROBLEM?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.06,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        blurRadius: 30,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                TextField(
                                  onChanged: (value) {
                                    if (value == "yes") {
                                      x2 = 1;
                                    } else {
                                      x2 = 0;
                                    }
                                  },
                                  controller: fieldText3,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1.5,
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: 'yes or no',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                Text(
                                  "WHAT FOOD TYPE DO YOU PREFER?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.06,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        blurRadius: 30,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                TextField(
                                  onChanged: (value) {
                                    if (value == "veg") {
                                      x4 = 1;
                                    } else {
                                      x4 = 0;
                                    }
                                  },
                                  controller: fieldText4,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1.5,
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: 'veg or non-veg',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                Text(
                                  "DO YOU PREFER DAIRY PRODUCTS?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.06,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        blurRadius: 30,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                TextField(
                                  onChanged: (value) {
                                    if (value == "yes") {
                                      x5 = 1;
                                    } else {
                                      x5 = 0;
                                    }
                                  },
                                  controller: fieldText5,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1.5,
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: 'yes or no',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                Material(
                                  color: Colors.transparent,
                                  shadowColor: Colors.black,
                                  child: MaterialButton(
                                    colorBrightness: Brightness.dark,
                                    color: Colors.white.withOpacity(0.3),
                                    elevation: 18.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    onPressed: () {
                                      print("x1 $x1");
                                      print("x2: $x2");
                                      print("x3 $x3");
                                      print("x4 : $x4");
                                      print("x5: $x5");
                                      dietModelAPI();
                                      clearText();
                                    },
                                    child: Text("SUBMIT"),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
