// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'background_card.dart';

class WeightGain extends StatelessWidget {
  const WeightGain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.035),
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: AssetImage("assets/images/PHBcXT.jpg"),
                fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(60)),
              child: ListView(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03,
                    right: MediaQuery.of(context).size.width * 0.03),
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BackgroundCard(
                          color: Colors.transparent.withOpacity(0.1),
                          childContainer: Container(
                            margin: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                            child: Center(
                              child: Text(
                                "WEIGHT GAIN DIET",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 29, fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/gain.gif",
                                  width:
                                      MediaQuery.of(context).size.height * 0.3,
                                ),
                                Container(
                                  margin: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.025,
                                  ),
                                  child: Text(
                                    "Losing weight may be an excellent goal for many people, but not everyone is looking to shed pounds. There can be a variety of reasons why you may want to gain weight! Perhaps you're working on building muscle and would like your diet to support bulking up, or maybe you're recovering from an illness that dropped your weight below your ideal.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.025,
                                  ),
                                  child: Text(
                                    "When it comes to gaining weight and building muscle, macronutrients matter. But it's a myth that you have to go all-in on high-protein foods in order to gain muscle. ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                BackgroundCard(
                                  color: Colors.white.withOpacity(0.1),
                                  childContainer: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "Here are some foods to focus on for a balance of healthy fats, complex carbohydrates and plenty of protein: \n\n\u2605 Oily fish like salmon, tuna, herring and anchovies \n\u2605 Meats like turkey, chicken and lean beef, pork and lamb \n\u2605 Beans and legumes, including chickpeas, black beans, lentils, cannellini beans and hummus \n\u2605 Eggs \n\u2605 Nut butters and nuts like cashews, peanuts, almonds, walnuts and pecans \n\u2605 Whole grains like whole-wheat bread, whole-wheat pasta, brown rice and quinoa \n\u2605 High-calorie fruits and vegetables like avocados, coconut, bananas, mangoes and dried fruit \n\u2605 Full-fat dairy, including milk, yogurt and cheese",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                 SizedBox(
                            height: MediaQuery.of(context).size.width * 0.04,
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
                                    onPressed: () {Navigator.pushNamed(context, "diet_plan");},
                                    child: Text(
                                        "HEALTHY WEIGHT-GAIN MEAL PLAN ->"),
                                  ),
                                ),
                                 SizedBox(
                            height: MediaQuery.of(context).size.width * 0.1,
                          ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
