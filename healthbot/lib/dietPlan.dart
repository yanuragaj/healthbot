// ignore_for_file: prefer_const_constructors, file_names

import 'dart:ui';
import 'package:flutter/material.dart';
import 'background_card.dart';

class DietPlan extends StatelessWidget {
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
                                "HEALTHY WEIGHT-GAIN MEAL PLAN",
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
                                  "assets/images/plan.gif",
                                  width:
                                      MediaQuery.of(context).size.height * 0.3,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
                                ),
                                BackgroundCard(
                                  color: Colors.transparent.withOpacity(0.1),
                                  childContainer: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "DAY 1",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Breakfast (704 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2 servings Vegan Freezer Breakfast Burritos \n\u2605 1 cup strawberries",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "A.M. Snack (246 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Almond-Honey Power Bar",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Lunch (649 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2 servings Vegetable & Tuna Pasta Salad \n\u2605 1 cup mango chunks",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "P.M. Snack (200 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 large apple \n\u2605 1 Tbsp. natural peanut butter",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Dinner (716 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Sheet-Pan Maple-Mustard Pork Chops and Carrots \n\u2605 1 1/2 cups Easy Brown Rice",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "DAILY TOTAL (2500 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2,514 calories \n\u2605 104 g protein \n\u2605 340 g carbohydrates \n\u2605 45 g fiber \n\u2605 88 g fat \n\u2605 2,563 mg sodium",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 2000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Omit the peanut butter from the P.M. snack and omit the rice from dinner.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 3000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Add an extra Almond-Honey Power Bar to the A.M. snack, add an extra 2 Tbsp. peanut butter to the P.M. snack, and add an extra ½ cup brown rice to dinner.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
                                ),
                                BackgroundCard(
                                  color: Colors.transparent.withOpacity(0.1),
                                  childContainer: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "DAY 2",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Breakfast (430 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Raspberry Peach Mango Smoothie Bowl \n\u2605 1 hard-boiled egg",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "A.M. Snack (192 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 15 baby carrots \n\u2605 3 Tbsp. hummus \n\u2605 1 medium orange",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Lunch (648 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Roasted Butternut Squash & Root Vegetables with Cauliflower Gnocchi \n\u2605 1 slice whole-wheat toast with 1 tsp. unsalted butter",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "P.M. Snack (265 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Homemade Microwave Popcorn \n\u2605 1 large banana \n\u2605 8 unsalted almonds",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Dinner (951 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2 servings Philly Cheese Steak Sloppy Joes \n\u2605 2 cups fresh spinach & 1 cup shredded carrots topped with ½ Tbsp. olive oil & ½ Tbsp. balsamic vinegar",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "DAILY TOTAL (2500 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2486 calories \n\u2605 120 g protein \n\u2605 298 g carbohydrates \n\u2605 64 g fiber \n\u2605 98 g fat \n\u2605 2,470 mg sodium",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 2000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Omit the hard-boiled egg at breakfast, omit the hummus at the A.M. snack, omit the toast and butter at lunch, and omit the banana and almonds in the P.M. snack.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 3000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Add another hard-boiled egg at breakfast, add 6 whole-wheat crackers and another tablespoon hummus at A.M. snack, and add dinner dessert of 8 oz. 2% plain Greek yogurt with 1 Tbsp. honey & 1 cup strawberries.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
                                ),
                                BackgroundCard(
                                  color: Colors.transparent.withOpacity(0.1),
                                  childContainer: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "DAY 3",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Breakfast (646 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2 servings Maple-Nut Granola \n\u2605 1 cup 2% milk",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "A.M. Snack (267 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 slice Swiss cheese \n\u2605 8 whole-wheat crackers",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Lunch (648 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Roasted Butternut Squash & Root Vegetables with Cauliflower Gnocchi \n\u2605 1 slice whole-wheat toast with 1 tsp. unsalted butter",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "P.M. Snack (234 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 6 oz. 2% plain Greek yogurt \n\u2605 1 cup strawberries \n\u2605 1 Tbsp. honey",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Dinner (709 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2 servings Creamy Chicken, Brussels Sprouts and Mushroom One-Pot Pasta",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "DAILY TOTAL (2500 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2505 calories \n\u2605 116 g protein \n\u2605 315 g carbohydrates \n\u2605 48 g fiber \n\u2605 94 g fat \n\u2605 2502 mg sodium",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 2000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Reduce granola to 1 serving and reduce milk to ½ cup at breakfast, and omit hard-boiled egg and Swiss cheese at A.M. snack.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 3000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Increase gnocchi to 2 servings at lunch and add 1 graham cracker at P.M. snack.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
                                ),
                                BackgroundCard(
                                  color: Colors.transparent.withOpacity(0.1),
                                  childContainer: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "DAY 4",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Breakfast (646 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2 servings Maple-Nut Granola \n\u2605 1 cup 2% milk",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "A.M. Snack (218 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 15 carrot sticks \n\u2605 1/4 cup hummus \n\u2605 1 medium orange",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Lunch (648 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Roasted Butternut Squash & Root Vegetables with Cauliflower Gnocchi \n\u2605 1 slice whole-wheat toast with 1 tsp. unsalted butter",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "P.M. Snack (335 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 4 gram crackers \n\u2605 1 medium apple",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Dinner (651 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Southern Style Oven-Fried Chicken \n\u2605 1 serving Greek Potato Salad \n\u2605 1 serving Garlicky Green Beans",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "DAILY TOTAL (2500 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2499  calories \n\u2605 81 g protein \n\u2605 330 g carbohydrates \n\u2605 53 g fiber \n\u2605 101 g fat \n\u2605 2471 mg sodium",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 2000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Reduce granola to 1 serving and milk to ½ cup at breakfast, omit the buttered toast at lunch and reduce the P.M. snack to 3 graham crackers.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 3000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Add 2 additional graham crackers and 2 Tbsp. peanut butter to PM snack, add a second slice of whole-wheat toast with 1 tsp. butter at lunch and add a second serving of beans at dinner.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
                                ),
                                BackgroundCard(
                                  color: Colors.transparent.withOpacity(0.1),
                                  childContainer: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "DAY 5",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Breakfast (507 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Raspberry Peach Mango Smoothie Bowl \n\u2605 2 hard-boiled eggs",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "A.M. Snack (492 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2 servings Almond-Honey Power Bars",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Lunch (648 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Roasted Butternut Squash & Root Vegetables with Cauliflower Gnocchi \n\u2605 1 slice whole-wheat toast with 1 tsp. unsalted butter",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "P.M. Snack (165 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2 servings Homemade Microwave Popcorn",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Dinner (697 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2 servings Green Goddess Salad with Chicken \n\u2605 1 slice whole-wheat toast with 1 tsp. unsalted butter",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "DAILY TOTAL (2500 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2509  calories \n\u2605 157 g protein \n\u2605 295 g carbohydrates \n\u2605 60 g fiber \n\u2605 86 g fat \n\u2605 1579 mg sodium",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 2000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Omit eggs at breakfast and omit 1 Almond-Honey Power Bar at the A.M. snack.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 3000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Add 1 medium apple with 2 Tbsp. natural peanut butter to the P.M. snack and add a dinner dessert of 1 square of dark chocolate.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
                                ),
                                BackgroundCard(
                                  color: Colors.transparent.withOpacity(0.1),
                                  childContainer: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "DAY 6",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Breakfast (704 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2 servings Vegan Freezer Breakfast Burritos \n\u2605 1 cup strawberries",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "A.M. Snack (246 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Almond-Honey Power Bar",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Lunch (649 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2 servings Vegetable & Tuna Pasta Salad \n\u2605 1 cup mango chunks",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "P.M. Snack (200 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 large apple \n\u2605 1 Tbsp. natural peanut butter",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Dinner (716 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Sheet-Pan Maple-Mustard Pork Chops and Carrots \n\u2605 1 1/2 cups Easy Brown Rice",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "DAILY TOTAL (2500 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2,514 calories \n\u2605 104 g protein \n\u2605 340 g carbohydrates \n\u2605 45 g fiber \n\u2605 88 g fat \n\u2605 2,563 mg sodium",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 2000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Omit the peanut butter from the P.M. snack and omit the rice from dinner.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 3000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Add an extra Almond-Honey Power Bar to the A.M. snack, add an extra 2 Tbsp. peanut butter to the P.M. snack, and add an extra ½ cup brown rice to dinner.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
                                ),
                                BackgroundCard(
                                  color: Colors.transparent.withOpacity(0.1),
                                  childContainer: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "DAY 7",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Breakfast (430 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Raspberry Peach Mango Smoothie Bowl \n\u2605 1 hard-boiled egg",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "A.M. Snack (192 Calories) ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 15 baby carrots \n\u2605 3 Tbsp. hummus \n\u2605 1 medium orange",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Lunch (648 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Roasted Butternut Squash & Root Vegetables with Cauliflower Gnocchi \n\u2605 1 slice whole-wheat toast with 1 tsp. unsalted butter",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "P.M. Snack (265 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 1 serving Homemade Microwave Popcorn \n\u2605 1 large banana \n\u2605 8 unsalted almonds",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "Dinner (951 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2 servings Philly Cheese Steak Sloppy Joes \n\u2605 2 cups fresh spinach & 1 cup shredded carrots topped with ½ Tbsp. olive oil & ½ Tbsp. balsamic vinegar",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "DAILY TOTAL (2500 Calories)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 2486 calories \n\u2605 120 g protein \n\u2605 298 g carbohydrates \n\u2605 64 g fiber \n\u2605 98 g fat \n\u2605 2,470 mg sodium",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 2000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Omit the hard-boiled egg at breakfast, omit the hummus at the A.M. snack, omit the toast and butter at lunch, and omit the banana and almonds in the P.M. snack.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: Colors.black,
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
                                      "To Make It 3000 Calories",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
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
                                      "\u2605 Add another hard-boiled egg at breakfast, add 6 whole-wheat crackers and another tablespoon hummus at A.M. snack, and add dinner dessert of 8 oz. 2% plain Greek yogurt with 1 Tbsp. honey & 1 cup strawberries.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
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
