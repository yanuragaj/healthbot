// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthbot/chatScreen.dart';
import 'package:healthbot/fitnessDiet.dart';
import 'package:healthbot/food_energy_convertor.dart';
import 'package:healthbot/sign-up.dart';
import 'package:healthbot/vegan.dart';
import 'package:healthbot/weightGain.dart';
import 'IF.dart';
import 'Low_carb.dart';
import 'bmr_bmi.dart';
import 'dash.dart';
import 'dietPlan.dart';
import 'home.dart';
import 'onerm.dart';
import 'sign-in.dart';
import 'splashscreen.dart';
import 'sportDiet.dart';
import 'weigh_loss.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    // status bar color
  ));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      routes: {
        "splash": (context) => SplashScreen(),
        "home": (context) => Home(),
        "sign-up": (context) => MySignUp(),
        "sign-in": (context) => MySignIn(),
        "bmr_bmi": (context) => BMRBMI(),
        "onerm": (context) => OneRM(),
        "food_energy_convertor": (context) => Fconverter(),
        "sport_diet": (context) => SportDiet(),
        "fitness_diet": (context) => FitnessDiet(),
        "weight_gain": (context) => WeightGain(),
        "diet_plan": (context) => DietPlan(),
        "vegan": (context) => VeganDiet(),
        "dash": (context) => DashDiet(),
        "low_carb": (context) => LowCarb(),
        "IF": (context) => IFDiet(),
        "chat_screen": (context) => ChatScreen(),
        "weight_loss": (context) => WeightLoss(),
      },
    ),
  );
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
