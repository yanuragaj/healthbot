// ignore_for_file: prefer_const_constructors
import 'dart:ui';
import 'package:flutter/material.dart';
import 'background_card.dart';

class FitnessDiet extends StatelessWidget {
  const FitnessDiet({Key key}) : super(key: key);

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
                                "FITNESS DIET",
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
                                  "assets/images/fitness.gif",
                                  width:
                                      MediaQuery.of(context).size.height * 0.4,
                                ),
                                Container(
                                  margin: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.025,
                                  ),
                                  child: Text(
                                    "Eating a well-balanced diet can help you get the calories and nutrients you need to fuel your daily activities, including regular exercise. \n\n When it comes to eating foods to fuel your exercise performance, it’s not as simple as choosing vegetables over doughnuts. You need to eat the right types of food at the right times of the day.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                BackgroundCard(
                                  color: Colors.transparent.withOpacity(0.1),
                                  childContainer: Container(
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "\"BALANCE IS KEY\"",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.025,
                                  ),
                                  child: Text(
                                    "As you settle into an active lifestyle, you’ll probably discover which foods give you the most energy and which have negative effects. The key is learning to listen to your body and balancing what feels right with what’s good for you.",
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
                                      "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tTIPS \n\n\u261B Aim to make breakfast a part of your routine. \n\u261B Choose complex carbohydrates, lean protein sources, healthy fats, and a wide variety of fruits and veggies. \n\u261B Stock your fridge and gym bag with healthy workout snacks.",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 20,
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
                                      "The right balance of carbohydrates, protein, and other nutrients can help fuel your exercise routine.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
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
                                      "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tCARBOHYDRATES \n\n\u261B Consuming the right kind of carbohydrates is important. Many people rely on the simple carbs found in sweets and processed foods. \n\n\u261B Instead, you should focus on eating the complex carbs found in: \n\u2605 whole grains \n\u2605 fruits \n\u2605 vegetables \n\u2605 beans. \n\n\u261B They can help you feel full for longer and fuel your body throughout the day.\n\n\u261B They can also help stabilize your blood sugar levels. Finally, these quality grains have the vitamins and minerals you need to keep your body running at its best.",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 20,
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
                                      "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPROTEIN \n\n\u261B Protein is needed to help keep your body growing, maintained, and repaired. \n\n\u261B Adults need to eat about 0.8 grams of protein per day for every kilogram of their body weight, reports Harvard Health Blog. That’s equal to about 0.36 grams of protein for every pound of body weight. Exercisers and older adults may need even more. \n\n\u261B Protein can come from: \n\u2605 poultry, such as chicken and turkey \n\u2605 red meat, such as beef and lamb \n\u2605 fish, such as salmon and tuna \n\u2605 dairy, such as milk and yogurt \n\u2605 legumes, such as beans and lentils \n\u2605 eggs. \n\n\u261B For the healthiest options, choose lean proteins that are low in saturated and trans fats. Limit the amount of red meat and processed meats that you eat.",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 20,
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
                                      "\t\t\t\t\t\t\tFruit and Vegetable intake \n\n\u261B Fruits and vegetables are rich sources of natural fiber, vitamins, minerals, and other compounds that your body needs to function properly. They’re also low in calories and fat. \n\n\u261B Try to “eat the rainbow” by choosing fruits and veggies of different colors. This will help you enjoy the full range of vitamins, minerals, and antioxidants that the produce aisle has to offer. \n\n\u261B Every time you go to the grocery store, consider choosing a new fruit or vegetable to try. For snacks, keep dried fruits in your workout bag and raw veggies in the fridge.",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 20,
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
                                      "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tFATS \n\n\u261B While fat is a primary fuel for aerobic exercise, we have plenty stored in the body to fuel even the longest workouts. However, getting healthy unsaturated fats helps to provide essential fatty acids and calories to keep you moving. \n\n\u261B Healthy options include: \n\u2605 nuts \n\u2605 seeds \n\u2605 avocados \n\u2605 olive oils",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 20,
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
