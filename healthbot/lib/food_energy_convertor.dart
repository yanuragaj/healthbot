// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:ui';
import 'package:flutter/material.dart';
import 'background_card.dart';

class Fconverter extends StatefulWidget {
  @override
  _FconverterState createState() => _FconverterState();
}

class _FconverterState extends State<Fconverter> {
  String selectedValue1 = 'Kilojoule';
  String selectedValue2 = 'Joule';
  double enteredValue = 0.0;
  double convertedValue = 0.0;
  double result = 0.0;
  final fieldText1 = TextEditingController();

  void clearText() {
    fieldText1.clear();
  }

  double converterTool(selectedValue1, selectedValue2, enteredValue) {
    if (selectedValue1 == "Kilojoule" && selectedValue2 == "Joule") {
      convertedValue = 1.0;
      result = 1.0;
      return convertedValue = enteredValue * 1000;
    }

    if (selectedValue1 == "Joule" && selectedValue2 == "Kilojoule") {
      convertedValue = 1.0;
      result = 1.0;
      return convertedValue = enteredValue / 1000;
    }

    if (selectedValue1 == selectedValue2) {
      convertedValue = 1.0;
      result = 1.0;
      return convertedValue = enteredValue;
    }

    if (selectedValue1 == "Kcal" && selectedValue2 == "Joule") {
      convertedValue = 1.0;
      result = 1.0;
      return convertedValue = enteredValue * 4184;
    }

    if (selectedValue1 == "Joule" && selectedValue2 == "Kcal") {
      convertedValue = 1.0;
      result = 1.0;
      return convertedValue = enteredValue / 4184;
    }

    if (selectedValue1 == "Kcal" && selectedValue2 == "Kilojoule") {
      convertedValue = 1.0;
      result = 1.0;
      return convertedValue = enteredValue * 4.184;
    }

    if (selectedValue1 == "Kilojoule" && selectedValue2 == "Kcal") {
      convertedValue = 1.0;
      result = 1.0;
      return convertedValue = enteredValue / 4.184;
    }

    if (selectedValue1 == "Cal" && selectedValue2 == "Kcal") {
      convertedValue = 1.0;
      result = 1.0;
      return convertedValue = enteredValue / 1000;
    }

    if (selectedValue1 == "Kcal" && selectedValue2 == "Cal") {
      convertedValue = 1.0;
      result = 1.0;
      return convertedValue = enteredValue * 1000;
    }

    if (selectedValue1 == "Cal" && selectedValue2 == "Joule") {
      convertedValue = 1.0;
      result = 1.0;
      return convertedValue = enteredValue * 4.184;
    }

    if (selectedValue1 == "Joule" && selectedValue2 == "Cal") {
      convertedValue = 1.0;
      result = 1.0;
      return convertedValue = enteredValue / 4.184;
    }

    if (selectedValue1 == "Kilojoule" && selectedValue2 == "Cal") {
      convertedValue = 1.0;
      result = 1.0;
      return convertedValue = enteredValue * 239.006;
    }

    if (selectedValue1 == "Cal" && selectedValue2 == "Kilojoule") {
      convertedValue = 1.0;
      result = 1.0;
      return convertedValue = enteredValue / 239.006;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: AssetImage("assets/images/PHBcXT.jpg"),
                fit: BoxFit.cover),
          ),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Center(
                  child: ListView(
                children: [
                  Column(
                    children: [
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "FOOD ENERGY CONVERTER",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/images/food.gif",
                        width: MediaQuery.of(context).size.height * 0.3,
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "CONVERT FROM",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.05,
                                right: MediaQuery.of(context).size.width * 0.05,
                              ),
                              child: PopupMenuButton(
                                offset: Offset.lerp(
                                    Offset.fromDirection(
                                        MediaQuery.of(context).size.width *
                                            0.1),
                                    Offset.fromDirection(1),
                                    70),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        selectedValue1,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25),
                                      ),
                                      Icon(
                                        Icons.expand_more,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                color: Colors.transparent,
                                onSelected: (value) => setState(
                                  () => selectedValue1 = value,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                itemBuilder: (context) {
                                  return ['Kilojoule', 'Joule', 'Kcal', 'Cal']
                                      .map(
                                        (value) => PopupMenuItem(
                                          value: value,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(60.0)),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 50, sigmaY: 50),
                                              child: ListTile(
                                                title: Text(
                                                  value,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                                leading: Icon(
                                                  Icons
                                                      .arrow_forward_ios_outlined,
                                                  color: Colors.white,
                                                ),
                                                selectedColor:
                                                    Colors.transparent,
                                                selectedTileColor:
                                                    Colors.transparent,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList();
                                },
                              )),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "CONVERT TO",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.05,
                                right: MediaQuery.of(context).size.width * 0.05,
                              ),
                              child: PopupMenuButton(
                                offset: Offset.lerp(
                                    Offset.fromDirection(
                                        MediaQuery.of(context).size.width *
                                            0.1),
                                    Offset.fromDirection(1),
                                    70),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        selectedValue2,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25),
                                      ),
                                      Icon(
                                        Icons.expand_more,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                color: Colors.transparent,
                                onSelected: (value) => setState(
                                  () => selectedValue2 = value,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                itemBuilder: (context) {
                                  return ['Kilojoule', 'Joule', 'Kcal', 'Cal']
                                      .map(
                                        (value) => PopupMenuItem(
                                          value: value,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(60.0)),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 50, sigmaY: 50),
                                              child: ListTile(
                                                title: Text(
                                                  value,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                                leading: Icon(
                                                  Icons
                                                      .arrow_forward_ios_outlined,
                                                  color: Colors.white,
                                                ),
                                                selectedColor:
                                                    Colors.transparent,
                                                selectedTileColor:
                                                    Colors.transparent,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList();
                                },
                              )),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "ENTER VALUE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),

                      TextField(
                        onChanged: (value) {
                          enteredValue = double.parse(value);
                        },
                        controller: fieldText1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.8,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Colors.black,
                            ),
                          ),
                          hintText: 'Value',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                      ),
                      GestureDetector(
                        onTap: () {
                          converterTool(
                              selectedValue1, selectedValue2, enteredValue);
                          result = convertedValue;
                          setState(() {
                            result;
                          });

                          clearText();
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent.withOpacity(0.15),
                              ),
                              padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width * 0.025,
                              ),
                              child: Text(
                                "CONVERT",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      BackgroundCard(
                        color: Colors.transparent.withOpacity(0.1),
                        childContainer: Container(
                          margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.025,
                          ),
                          child: Center(
                            child: Text(
                              "Converted $enteredValue $selectedValue1 into $result $selectedValue2",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      //WidgetInspector(child: Text("Converted $enteredValue $selectedValue1 into $result $selectedValue2"), selectButtonBuilder: context)
                    ],
                  ),
                ],
              ))),
        ),
      ),
    );
  }
}
