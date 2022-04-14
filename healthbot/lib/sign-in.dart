// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthbot/main.dart';

class MySignIn extends StatefulWidget {
  @override
  _MySignInState createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {
  var authc = FirebaseAuth.instance;
  var email;
  var password;

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
                              "SIGN-IN",
                              style: TextStyle(
                                fontSize: 32,
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
                                  "assets/images/welcome.gif",
                                  width:
                                      MediaQuery.of(context).size.height * 0.3,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                Text(
                                  "ENTER EMAIL",
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
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                TextField(
                                  onChanged: (value) {
                                    email = value;
                                  },
                                  controller: fieldText1,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1.5,
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: 'email',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                Text(
                                  "ENTER PASSWORD",
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
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                TextField(
                                  onChanged: (value) {
                                    password = value;
                                  },
                                  obscureText: true,
                                  controller: fieldText2,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1.5,
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: 'password',
                                  ),
                                  textAlign: TextAlign.center,
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
                                    onPressed: () async {
                                      try {
                                        // ignore: unused_local_variable
                                        var user = await authc
                                            .signInWithEmailAndPassword(
                                                email: email,
                                                password: password);
                                        email = null;
                                        password = null;
                                        clearText();
                                        Navigator.pushNamed(context, "chat_screen");
                                      } catch (e) {
                                        email = null;
                                        password = null;
                                        print(e);
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              backgroundColor: Colors
                                                  .transparent
                                                  .withOpacity(0.1),
                                              contentTextStyle: TextStyle(
                                                  color: Colors.white,
                                                  backgroundColor: Colors
                                                      .transparent
                                                      .withOpacity(0.1)),
                                              content: Text(
                                                'Warning: $e',
                                                style: TextStyle(
                                                  fontSize: 25,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }
                                      // print(user);
                                      clearText();
                                    },
                                    child: Text("SIGN IN"),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, "sign-up");
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
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
