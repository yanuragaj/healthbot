// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:healthbot/chatBar.dart';
import 'package:http/http.dart' as http;

class ChatScreen extends StatefulWidget {
  String message;
  String messageEnd;
  ChatScreen({Key key, @required this.message, @required this.messageEnd})
      : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String a;
  DateTime _now = DateTime.now();
  final fieldText1 = TextEditingController();

  void clearText() {
    fieldText1.clear();
  }

  final ScrollController _controller = ScrollController();
  void _scrollDown() {
    _controller.animateTo(
      _controller.position.maxScrollExtent + 1000,
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  List<ChatScreen> chatBot = [
    ChatScreen(message: "Happy To See You !!!", messageEnd: "sender"),
    ChatScreen(message: "How Can I Help You?", messageEnd: "sender"),
  ];

  nlpAPI() async {
    var url = Uri.http("65.2.146.188:31261", "/spacy", {"x": a});
    var response = await http.get(url);
    print(response.body);
  }

  List str = [];

  BotReply() async {
    var splitFunc = a.split(" ");
    print(splitFunc);
    print(splitFunc.runtimeType);
    print(chatBot.last.message);
    var s = chatBot.last.message;
    print(s.runtimeType);

    for (var data in splitFunc) {
      if (data == "dash") {
        chatBot.add(
          ChatScreen(
              message:
                  " We've got you!!! \n Loading to Dash Diet Page\n Please Wait...",
              messageEnd: "sender"),
        );
        await Future.delayed(Duration(seconds: 2));

        Navigator.pushNamed(context, "dash");
        break;
      } else if (data == "vegan") {
        chatBot.add(
          ChatScreen(
              message:
                  " We've got you!!! \n Loading to Vegan Diet Page\n Please Wait...",
              messageEnd: "sender"),
        );
        await Future.delayed(Duration(seconds: 1));

        Navigator.pushNamed(context, "vegan");
        break;
      } else if (data == "sport" || data == "athelete") {
        chatBot.add(
          ChatScreen(
              message:
                  " We've got you!!! \n Loading to Sport/Athelete Diet Page\n Please Wait...",
              messageEnd: "sender"),
        );
        await Future.delayed(Duration(seconds: 1));

        Navigator.pushNamed(context, "sport_diet");
        break;
      } else if (data == "IF" ||
          data == "intermittent" ||
          data == "fast" ||
          data == "fasting") {
        chatBot.add(
          ChatScreen(
              message:
                  " We've got you!!! \n Loading to IF Methods\n Please Wait...",
              messageEnd: "sender"),
        );
        await Future.delayed(Duration(seconds: 1));

        Navigator.pushNamed(context, "IF");
        break;
      } else if (data == "fitness" ||
          data == "Fitness" ||
          data == "health" ||
          data == "Health") {
        chatBot.add(
          ChatScreen(
              message:
                  " We've got you!!! \n Loading Fitness Diet\n Please Wait...",
              messageEnd: "sender"),
        );
        await Future.delayed(Duration(seconds: 1));

        Navigator.pushNamed(context, "fitness_diet");
        break;
      } else if (data == "gain" ||
          data == "Gain" ||
          data == "weight-gain" ||
          data == "gaining") {
        chatBot.add(
          ChatScreen(
              message:
                  " We've got you!!! \n Loading Weight Gain Diet\n Please Wait...",
              messageEnd: "sender"),
        );
        await Future.delayed(Duration(seconds: 1));

        Navigator.pushNamed(context, "weight_gain");
        break;
      } else if (data == "plan" || data == "Plan" || data == "diet-plan") {
        chatBot.add(
          ChatScreen(
              message:
                  " We've got you!!! \n Loading Weekly Diet Plan\n Please Wait...",
              messageEnd: "sender"),
        );
        await Future.delayed(Duration(seconds: 1));

        Navigator.pushNamed(context, "diet_plan");
        break;
      } else if (data == "bmr" ||
          data == "bmi" ||
          data == "bmr-bmi" ||
          data == "BMR" ||
          data == "BMI") {
        chatBot.add(
          ChatScreen(
              message:
                  " We've got you!!! \n Loading BMR & BMI Tool\n Please Wait...",
              messageEnd: "sender"),
        );
        await Future.delayed(Duration(seconds: 1));

        Navigator.pushNamed(context, "bmr_bmi");
        break;
      } else if (data == "onerm" ||
          data == "OneRM" ||
          data == "RM" ||
          data == "rm") {
        chatBot.add(
          ChatScreen(
              message:
                  " We've got you!!! \n Loading One RM Tool\n Please Wait...",
              messageEnd: "sender"),
        );
        await Future.delayed(Duration(seconds: 1));

        Navigator.pushNamed(context, "onerm");
        break;
      } else if (data == "convertor" ||
          data == "Convertor" ||
          data == "converter" ||
          data == "converetor") {
        chatBot.add(
          ChatScreen(
              message:
                  " We've got you!!! \n Loading Food Energy Convertor\n Please Wait...",
              messageEnd: "sender"),
        );
        await Future.delayed(Duration(seconds: 1));

        Navigator.pushNamed(context, "food_energy_convertor");
        break;
      } else if (data == "lowcarb" || data == "lowcarb") {
        chatBot.add(
          ChatScreen(
              message:
                  " We've got you!!! \n Loading Low Carb Diet\n Please Wait...",
              messageEnd: "sender"),
        );
        await Future.delayed(Duration(seconds: 1));

        Navigator.pushNamed(context, "low_carb");
        break;
      } else if (data == "Hi" ||
          data == "Hey" ||
          data == "hi" ||
          data == "hey") {
        chatBot.add(
          ChatScreen(
              message: " Hey, \n You Are Amazing!!!", messageEnd: "sender"),
        );

        break;
      } else if (data == "Bye" ||
          data == "By" ||
          data == "bye" ||
          data == "by") {
        chatBot.add(
          ChatScreen(
              message: " Good to chat with You!!!\n See Yaa!!",
              messageEnd: "sender"),
        );

        break;
      } else if (data == "loss" ||
          data == "loose" ||
          data == "lost" ||
          data == "decrease") {
        chatBot.add(
          ChatScreen(
              message: " We've got you!!! \n Loading DL Model\n Please Wait...",
              messageEnd: "sender"),
        );
        await Future.delayed(Duration(seconds: 1));
        Navigator.pushNamed(context, "weight_loss");

        break;
      } else {
        str.add(data);
        print(str);
        print(str == splitFunc);
        print(str.length);
        print(splitFunc.length);
        if (str.length >= splitFunc.length) {
          chatBot.add(
            ChatScreen(message: " We are Sorry !!!", messageEnd: "sender"),
          );
          str = [];

          //   }

          // print(str==splitFunc);
        }
      }
    }
    str = [];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
            image: AssetImage("assets/images/PHBcXT.jpg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          actions: [ChatBar()],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.01,
              right: MediaQuery.of(context).size.width * 0.01,
              top: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.width * 0.01,
            ),
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                  image: AssetImage("assets/images/PHBcXT.jpg"),
                  fit: BoxFit.cover),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
              child: Center(
                child: Stack(
                  children: [
                    ListView.builder(
                      controller: _controller,
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.01,
                        bottom: MediaQuery.of(context).size.width * 0.25,
                      ),
                      itemCount: chatBot.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.01),
                          child: Align(
                            alignment: (chatBot[index].messageEnd == "sender"
                                ? Alignment.topLeft
                                : Alignment.topRight),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 16, right: 16, top: 10, bottom: 10),
                                color: Colors.transparent.withOpacity(0.4),
                                child: Column(
                                  children: [
                                    BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 30, sigmaY: 30),
                                      child: Text(
                                        chatBot[index].message,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '${_now.hour}:${_now.minute}',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 150, sigmaY: 150),
                          child: Container(
                            color: Colors.white.withOpacity(0.3),
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.05,
                            ),
                            height: MediaQuery.of(context).size.width * 0.14,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    onChanged: (value) {
                                      a = value;
                                      print(a);
                                    },
                                    controller: fieldText1,
                                    cursorColor: Colors.black,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: InputDecoration(
                                        hintText: "Write message...",
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                        border: InputBorder.none),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                FloatingActionButton(
                                  heroTag: Text("bt1"),
                                  onPressed: () {
                                    setState(() {
                                      a;
                                      chatBot;
                                    });
                                    chatBot.add(
                                      ChatScreen(
                                          message: a, messageEnd: "receiver"),
                                    );
                                    nlpAPI();
                                    BotReply();
                                    _scrollDown();
                                    clearText();
                                  },
                                  child: Icon(
                                    Icons.send,
                                    color: Colors.black,
                                    //size: 18,
                                  ),
                                  backgroundColor:
                                      Colors.white.withOpacity(0.1),
                                  elevation: 30,
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
