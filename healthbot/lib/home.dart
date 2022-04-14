// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cmoon_icons/flutter_cmoon_icons.dart';
import 'package:url_launcher/link.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: AssetImage("assets/images/PHBcXT.jpg"),
                fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
            child: Center(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(60),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.9,
                    width: MediaQuery.of(context).size.width * 0.95,
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01,
                      left: MediaQuery.of(context).size.height * 0.02,
                      right: MediaQuery.of(context).size.height * 0.02,
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(60)),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.43,
                              width: MediaQuery.of(context).size.height * 0.6,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.width *
                                        0.001,
                                  ),
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                      Radius.elliptical(400, 600),
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/mu.gif",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.4,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, "sign-up");
                                    },
                                    style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all(15),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white.withOpacity(0.3)),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        60)))),
                                    child: Text(
                                      '   SIGN UP   ',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, "sign-in");
                                    },
                                    style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all(15),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white.withOpacity(0.3)),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        60)))),
                                    child: Text(
                                      '   SIGN IN   ',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.0001,
                        ),
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.elliptical(400, 600),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/about.gif",
                                width:
                                    MediaQuery.of(context).size.height * 0.35,
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(15),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.white.withOpacity(0.3)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(60)))),
                          child: Text(
                            '   CONTACT US   ',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(15),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.white.withOpacity(0.3)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(60)))),
                          child: Text(
                            'Mail: yanuragaj@gmail.com',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.025,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(60),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 80,
                              sigmaY: 80,
                            ),
                            child: Row(
                              children: [
                                Link(
                                  target: LinkTarget.blank,
                                  uri: Uri.parse(
                                      'https://www.facebook.com/EternalAct07'),
                                  builder: (context, followLink) {
                                    return ElevatedButton(
                                      onPressed: followLink,
                                      style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all(15),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white.withOpacity(0.3)),
                                        shape: MaterialStateProperty.all(
                                            CircleBorder(
                                                side: BorderSide.none)),
                                      ),
                                      child: Icon(
                                        Icons.facebook_sharp,
                                        color: Colors.black,
                                      ),
                                    );
                                  },
                                ),
                                Link(
                                  target: LinkTarget.blank,
                                  uri: Uri.parse(
                                      'https://www.linkedin.com/in/yadav-anurag/'),
                                  builder: (context, followLink) {
                                    return ElevatedButton(
                                      onPressed: followLink,
                                      style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(15),
                                          backgroundColor:
                                              MaterialStateProperty.all(Colors
                                                  .white
                                                  .withOpacity(0.3)),
                                          shape: MaterialStateProperty.all(
                                            CircleBorder(side: BorderSide.none),
                                          )),
                                      child: CIcon(
                                        IconMoon.icon_linkedin1,
                                        color: Colors.black,
                                      ),
                                    );
                                  },
                                ),
                                Link(
                                  target: LinkTarget.blank,
                                  uri:
                                      Uri.parse('https://github.com/yanuragaj'),
                                  builder: (context, followLink) {
                                    return ElevatedButton(
                                      onPressed: followLink,
                                      style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(15),
                                          backgroundColor:
                                              MaterialStateProperty.all(Colors
                                                  .white
                                                  .withOpacity(0.3)),
                                          shape: MaterialStateProperty.all(
                                            CircleBorder(side: BorderSide.none),
                                          )),
                                      child: CIcon(
                                        IconMoon.icon_github,
                                        color: Colors.black,
                                      ),
                                    );
                                  },
                                ),
                                Link(
                                  target: LinkTarget.blank,
                                  uri: Uri.parse('http://wa.me/+918291741756'),
                                  builder: (context, followLink) {
                                    return ElevatedButton(
                                      onPressed: followLink,
                                      style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(15),
                                          backgroundColor:
                                              MaterialStateProperty.all(Colors
                                                  .white
                                                  .withOpacity(0.3)),
                                          shape: MaterialStateProperty.all(
                                            CircleBorder(side: BorderSide.none),
                                          )),
                                      child: CIcon(
                                        IconMoon.icon_whatsapp,
                                        color: Colors.black,
                                      ),
                                    );
                                  },
                                ),
                                Link(
                                  target: LinkTarget.blank,
                                  uri: Uri.parse(
                                      'https://www.instagram.com/a.n.u.r.a.g._.0.7/'),
                                  builder: (context, followLink) {
                                    return ElevatedButton(
                                      onPressed: followLink,
                                      style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(15),
                                          backgroundColor:
                                              MaterialStateProperty.all(Colors
                                                  .white
                                                  .withOpacity(0.3)),
                                          shape: MaterialStateProperty.all(
                                            CircleBorder(side: BorderSide.none),
                                          )),
                                      child: CIcon(
                                        IconMoon.icon_instagram1,
                                        color: Colors.black,
                                      ),
                                    );
                                  },
                                ),
                              ],
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
        ),
      ),
    );
  }
}
