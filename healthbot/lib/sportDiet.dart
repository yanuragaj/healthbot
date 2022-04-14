// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:ui';
import 'package:flutter/material.dart';
import 'background_card.dart';

class SportDiet extends StatelessWidget {
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
                                "SPORTS/ATHLETES DIET",
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
                                  "assets/images/kid-sport.gif",
                                  width:
                                      MediaQuery.of(context).size.height * 0.35,
                                ),
                                BackgroundCard(
                                  color: Color.fromARGB(0, 8, 6, 6)
                                      .withOpacity(0.1),
                                  childContainer: Container(
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "KIDS/TEEN(12-18)",
                                      //textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.025,
                                  ),
                                  child: Text(
                                    "Kids playing sports need a well-balanced diet to be at the top of their game. We have balanced meals and snack ideas for kids before, during, and after their training.",
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
                                      "PRE-EVENT MEALS",
                                      //textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                BackgroundCard(
                                  color: Colors.white.withOpacity(0.1),
                                  childContainer: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "\t\t\t\t\t\t\t\t\t\t\t\tMEAL#1 \n\n\u261B		Bananas \n\u261B Cold Cereal \n\u261B Milk \n\u261BToast with Jam \n\u261B Water",
                                      textAlign: TextAlign.justify,
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
                                        MediaQuery.of(context).size.width * 0.5,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "\t\t\t\t\t\t\t\t\t\t\t\tMEAL#2 \n\n\u261B Pineapple Juice \n\u261B Honey \n\u261B Pancakes \n\u261B Milk \n\u261B Water",
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
                                        MediaQuery.of(context).size.width * 0.5,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "\t\t\t\t\t\t\t\t\t\t\t\tMEAL#3 \n\n\u261B Apple Juice \n\u261B Oatmeal with fruits \n\u261B Honey \n\u261B Nuts \n\u261B Water",
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
                                        MediaQuery.of(context).size.width * 0.5,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "\t\t\t\t\t\t\t\t\t\t\t\tMEAL#4 \n\n\u261B Orange Juice \n\u261B Yogurt Smoothie \n\u261B Fruits \n\u261B Honey \n\u261B Scrambled Eggs \n\u261B Water",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                BackgroundCard(
                                  color: Colors.transparent.withOpacity(0.1),
                                  childContainer: Container(
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "DURING-EVENT MEALS",
                                      //textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
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
                                      "\u261B Apple \n\u261B Grapes \n\u261B Crackers (whole wheat crackers with minimal ingredients) \n\u261B Fruit juice (100% fruit of course) \n\u261B Banana \n\u261B Applesauce (single serving works great) \n\u261BOranges (sliced into wedges or circles)\n\u261B Pears (sliced) \n\u261B Whole wheat mini bagels (bring some fruit spread for the top) \n\u261B Corn Bread \n\u261B Bread or Mini Muffins \n\u261B Canned Fruit (little fruit cups of peaches or pears) \n\u261B Granola Bars (with under 8 grams of sugar)",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                BackgroundCard(
                                  color: Colors.transparent.withOpacity(0.1),
                                  childContainer: Container(
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "POST-EVENT MEALS (RECOVERY)",
                                      //textAlign: TextAlign.center,
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
                                    "Post training meals should include carbs to replenish depleted glycogen and protein to build and repair muscles.  A little sodium is also good to replace sodium lost through sweating.",
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
                                        MediaQuery.of(context).size.width * 0.7,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "\u261B Flavored milks (Studies have shown that low-fat milk is better than sports drink at promoting muscle recovery) \n\u261B Yogurt Smoothie \n\u261B Fruits and Yogurt \n\u261B Apple and Cheese",
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
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
                            child: Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                Image.asset(
                                  "assets/images/Sport.gif",
                                  width:
                                      MediaQuery.of(context).size.height * 0.3,
                                ),
                                BackgroundCard(
                                  color: Color.fromARGB(0, 8, 6, 6)
                                      .withOpacity(0.1),
                                  childContainer: Container(
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "ADULT (18-40)",
                                      //textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.05,
                                  ),
                                  child: Text(
                                    "The energy needs of athletes exceed those of the average person. It is not uncommon for male and female athletes, especially those still growing, to have caloric needs exceeding 2,400-3,000 kcal and 2,200-2,700 kcal per day, respectively. The amount of energy found within a given food is dependent on the macronutrient (carbohydrate, protein and fat) content of the item.",
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
                                        MediaQuery.of(context).size.width * 0.7,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "Macronutrient > Energy content",
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
                                        MediaQuery.of(context).size.width * 0.7,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "\u261B Carbohydrates > 4 Kcal/gram \n\u261B Protein > 4 kcal/gram \n\u261B Alcohol > 7 kcal/gram \n\u261B Fat > 9 kcal/gram",
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
                                        MediaQuery.of(context).size.width * 0.7,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      """\u261B Although alcohol is not considered a macronutrient, it is important for athletes to realise that it is higher in calories and can contribute to undesirable weight gain.
                                                      \u261B Carbohydrates serve as the primary source of energy during activities of higher intensity. Healthy carbohydrate food sources include fruits, vegetables, whole-grain cereals, breads and pastas.
                                                      \u261B Dietary fat also plays a key role in helping individuals meet their energy needs as well as supporting healthy hormone levels. Healthy sources of fat include nuts, nut butters, avocados, olive and coconut oils. Limit use of vegetable oils such as corn, cottonseed or soybean oil.
                                                      \u261B Dietary protein plays a key role in muscle repair and growth. Preferred sources of protein include lean meats, eggs, dairy (yogurt, milk, cottage cheese) and legumes.
                                        """,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                BackgroundCard(
                                  color: Color.fromARGB(0, 8, 6, 6)
                                      .withOpacity(0.1),
                                  childContainer: Container(
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "PLANNING A NUTRITIOUS MEAL",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
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
                                      "\t\t\t\t\t\t\t\t\t\t\t\t\t\tCARBOHYDRATES \n\n\u261B Fruits \n\u261B Oatmeal \n\u261B Starchy vegetables (sweet/white potatoes, squash) \n\u261B Non-starchy vegetables (broccoli, leafy greens) \n\u261B Whole-grain bread or crackers \n\u261B High-fiber, Non-sugary cereals \n\u261B Quinoa \n\u261B Brown or Wild rice ",
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
                                        MediaQuery.of(context).size.width * 0.7,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPROTEIN \n\n\u261B Whole eggs (white and yolk) \n\u261B Greek yogurt \n\u261B Milk \n\u261B String Cheese \n\u261B Lean Red Meats \n\u261B Fish \n\u261B Hummus  ",
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
                                        MediaQuery.of(context).size.width * 0.7,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tHEALTHY FAT \n\n\u261B Avocado \n\u261B Peanut Butter \n\u261B Nuts and Seeds \n\u261B Olive or Canola Oil \n\u261B Coconut Oil \n\u261B Flax Seed (add to baking or cooking)",
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
                                        MediaQuery.of(context).size.width * 0.7,
                                    margin: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.025,
                                    ),
                                    child: Text(
                                      "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tHYDRATION \n\n\Adequate hydration is a key element in sports performance. Most athletes benefit from developing a personal hydration plan. A general rule for training is to consume a minimum: \n\u261B Two cups of fluid prior to training \n\u261B Four to six ounces of fluid every 15 minutes of exercise",
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
