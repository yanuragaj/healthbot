// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class ChatBar extends StatelessWidget {
  const ChatBar({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
        child: Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.02,
          ),
          height: MediaQuery.of(context).size.width * 0.5,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.1,
                child: FloatingActionButton(
                  onPressed: () {Navigator.pushNamed(context, "home");},
                  backgroundColor: Colors.white.withOpacity(0.3),
                  child: Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Colors.black,
                  ),
                ),
              ),
              Image.asset(
                "assets/images/bot1.gif",
                width: MediaQuery.of(context).size.width * 0.17,
              ),
              Text(
                "HEALTH BOT",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.12,
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.1,
                child: FloatingActionButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return ListView(
                          children: [
                            AlertDialog(
                              backgroundColor:
                                  Colors.transparent.withOpacity(0.1),
                              contentTextStyle: TextStyle(
                                  color: Colors.white,
                                  backgroundColor:
                                      Colors.transparent.withOpacity(0.1)),
                              content: Text(
                                'TY PROJECT => HEALTH BOT \n\n 21606 Anurag Yadav\n 21608 Rajusingh Sinadal \n\n\u2605 Health Bot is an android application for those people who want to keep themselves fit and healthy. It is chat enabled, so users can interact. \n\n\u2605 Every people will have their own way to interact. Machines cannot understand human language. Even they support English language but they do not understand English Grammar, Negation, Parts of Speech and Base Word etc. \n\n\u2605 So, it is harder for machines to understand user’s requirements. To give this feature to machines so that they can understand English Grammar, we are implementing Health Bot using NLP (Natural Language Process). \n\n\u2605 SpaCy is one of the NLP libraries which will be used in this project to enhance English Grammar capabilities of machine. \n\n\u2605 spaCy library includes stop words and we can add or remove stop words as many we want as per our use case. \n\n\u2605 Basically, in computing, stop words are words which are filtered out before or after processing of natural language data. Though "stop words" usually refers to the most common words in a language. Example: it, its, is, mg, ml, up, with etc.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  backgroundColor: Colors.white.withOpacity(0.3),
                  child: Icon(
                    Icons.info_outline_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
