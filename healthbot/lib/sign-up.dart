// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MySignUp extends StatefulWidget {
  @override
  _MySignUpState createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
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
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: AssetImage("assets/images/PHBcXT.jpg"),
                fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
            child: Center(
              child: Column(children: [
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
                            "SIGN-UP",
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
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.height * 0.05,
                        right: MediaQuery.of(context).size.height * 0.05,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/sign.gif",
                            width: MediaQuery.of(context).size.height * 0.3,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Text(
                            "ENTER EMAIL",
                            style: TextStyle(
                              fontSize: 22,
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
                            height: MediaQuery.of(context).size.width * 0.05,
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
                            height: MediaQuery.of(context).size.width * 0.1,
                          ),
                          Text(
                            "ENTER PASSWORD",
                            style: TextStyle(
                              fontSize: 22,
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
                            height: MediaQuery.of(context).size.width * 0.05,
                          ),
                          TextField(
                            onChanged: (value) {
                              password = value;
                            },
                            controller: fieldText2,
                            obscureText: true,
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
                            height: MediaQuery.of(context).size.width * 0.05,
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
                                      .createUserWithEmailAndPassword(
                                          email: email, password: password);
                                  await showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        backgroundColor:
                                            Colors.transparent.withOpacity(0.1),
                                        contentTextStyle: TextStyle(
                                            color: Colors.white,
                                            backgroundColor: Colors.transparent
                                                .withOpacity(0.1)),
                                        content: Text(
                                          'SUCCESS !!!',
                                          style: TextStyle(
                                            fontSize: 25,
                                          ),
                                        ),
                                      );
                                    },
                                  );

                                  email = null;
                                  password = null;
                                  clearText();

                                  Navigator.pushNamed(context, "sign-in");
                                } catch (e) {
                                  email = null;
                                  password = null;
                                  //print(e);
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        backgroundColor:
                                            Colors.transparent.withOpacity(0.1),
                                        contentTextStyle: TextStyle(
                                            color: Colors.white,
                                            backgroundColor: Colors.transparent
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
                              child: Text("SIGN UP"),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.1,
                          ),
                          Text(
                            "Already have an account?",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "sign-in");
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w900),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
