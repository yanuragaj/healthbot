// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

import 'background_card.dart';

class VeganDiet extends StatelessWidget {
  const VeganDiet({key}) : super(key: key);

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
                                "VEGAN DIET",
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
                                  "assets/images/vegan.gif",
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
                                  color: Colors.white.withOpacity(0.1),
                                  childContainer: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "\u2605 Vegan diet includes , grains, beans, nuts ,and seeds. \n\u2605 It is healthful and nutritionally adequate diet. \n\u2605 It includes foods which contains proteins, calcium, iron, B12, Omega 3 fatty acid",
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
                                        MediaQuery.of(context).size.width * 0.7,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "BREAKFAST",
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
                                      "\u2605 1-3 glasses of warm water, don’t drink any tea\n\u2605 Include seasonal fruits like Apple, Orange, Berries, Grapes, Pomegranate\n\u2605 It is recommended to eat banana empty stomach for weight loss  \n\u2605 Breakfast Options: Poha, Dosa, Idli, Oats, Upma, Quinoa porridge, Musli, Smoothie, Uttapam, Methi paratha, Daliya, Besan chilla, Rice, Roti ",
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
                                        MediaQuery.of(context).size.width * 0.7,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "LUNCH",
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
                                      "\u2605 Lunch Options: Rajma rice/roti, Chole rice/roti, Dal rice/roti, Dal rice khichdi, Oats dal porridge, Mushroom rolls, Dosa, Beans sabzi roti, Quinoa dal khichdi, Besan methi thepla, Sprouts oats salad,jowar dal khichdi, Quinoa salad, Stuffed tofu roll",
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
                                        MediaQuery.of(context).size.width * 0.7,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "DINNER",
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
                                      "\u2605 Soups (lentil, beans, mushroom, tomatoes, broccoli) \n\u2605 Porridge (wheat, quinoa, oats, dal amaranth) \n\u2605 Grilled or Sauted (veggies, tofu) \n\u2605 Rice/Roti (with sabzi, dal) ",
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
