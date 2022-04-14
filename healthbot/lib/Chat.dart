// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  String message;
  String messageEnd;

  Chat({Key key, @required this.message, @required this.messageEnd})
      : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Chat> chatBot = [
    Chat(message: "Happy To See You !!!", messageEnd: "sender"),
    Chat(message: "How Can I Help You?", messageEnd: "sender"),
    Chat(message: "Happy To See You !!!", messageEnd: "sender"),
    Chat(message: "How Can I Help You?", messageEnd: "sender"),
    Chat(message: "Happy To See You !!!", messageEnd: "sender"),
    Chat(message: "How Can I Help You?", messageEnd: "sender"),
    Chat(message: "Happy To See You !!!", messageEnd: "sender"),
    Chat(message: "How ", messageEnd: "receiver"),
  ];

  addMethod() {
    chatBot.add(Chat(message: widget.message, messageEnd: "receiver"));
  }
  //chat.add(widget.text);

  @override
  Widget build(BuildContext context) {
    addMethod();
    if (chatBot.last.message == "null") {
      chatBot.removeLast();
    }

    // print(chatBot[1].message);
    print(chatBot.iterator);
    //print(chatBot[8].message);

    print(chatBot.last.message);
    return ListView.builder(
      itemCount: chatBot.length,
      itemBuilder: (context, index) {
        return Align(
          //alignment: Alignment.topCenter,
          alignment: (chatBot[index].messageEnd == "sender"
              ? Alignment.topLeft
              : Alignment.topRight),
          child: Container(
            child: Text(chatBot[index].message),
          ),
        );
      },
    );
  }
}
