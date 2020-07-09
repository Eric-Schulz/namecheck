import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:namecheck/Probability.dart';
import 'package:namecheck/widgets.dart';
import 'colors.dart';
import "dart:math";
import "network_brain.dart";
import 'style.dart';
import 'widgets.dart';
import 'countryCodesParser.dart';
import 'package:share/share.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NetworkBrain networkBrain = new NetworkBrain();
  Probability country;
  CountryCodesParser countryCodesParser = new CountryCodesParser();
  List<Probability> countryList;
  Color shareButtonColor = Color.fromRGBO(250, 250, 250, 0.0);
  String age = "";
  String name = "n";
  String country1 = "";
  String country2 = "";
  String country3 = "";
  String probability1 = "";
  String probability2 = "";
  String probability3 = "";
  double transitionWidth;
  double transitionHeight;
  double borderRadius = 100.0;
  int gradient1;
  int gradient2;
  bool shareButtonVisibility = false;

  //init-------------
  @override
  void initState() {
    super.initState();
    transitionWidth = 0.1;
    transitionHeight = 0.1;
    colorizeGradients();
    countryCodesParser = new CountryCodesParser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(gradient: gradientList[gradient1]),
          ),
          Center(
            child: TransitionWidget(
              width: transitionWidth,
              height: transitionHeight,
              color: gradient2,
              borderRadius: borderRadius,
            ),
          ),
          Column(
            children: <Widget>[
              Expanded(
                  flex: 10,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10.0),
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "$name?",
                                    style: kTextStyleBig,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10.0),
                                alignment: Alignment.bottomRight,
                                child: Visibility(
                                  visible: shareButtonVisibility,
                                  child: IconButton(
                                      icon: Icon(Icons.share),
                                      iconSize: 28.0,
                                      color: Colors.white,
                                      onPressed: () {
                                        if(shareButtonVisibility == true){
                                          Share.share("WOW!🤩 Most people with my name are $age years old and living in $country1, $country2 and $country3 😱//*Download the app and test your name: https://docs.google.com/uc?export=download&id=1y_clZocKgQsrRfHSwI2xbLw5nhKHIMdA *" , subject: "name? Check out this cool App");
                                        }
                                      }),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Column(
                            children: [
                              CustomCard(
                                CustomListItem(Icon(Icons.date_range), "$age"),
                              ),
                              CustomCard(Column(children: [
                                CustomListItem(
                                    Icon(Icons.flag), probability1 + country1),
                                CustomListItem(
                                    SizedBox(
                                      width: 10,
                                      height: 10,
                                    ),
                                    probability2 + country2),
                                CustomListItem(
                                    SizedBox(
                                      width: 10,
                                      height: 10,
                                    ),
                                    probability3 + country3),
                              ])),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                          child: Center(
                              child: Opacity(
                            opacity: 0.9,
                            child: CustomInputField(
                              onChanged: (string) {
                                setState(
                                  () {
                                    name = string;
                                  },
                                );
                              },
                              onSubmitted: (string) {
                                downloadAndSetAllValues();
                              },
                            ),
                          )),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(top: 5.0),
                          child: Center(
                            child: OutlineButton(
                              onPressed: () {
                                downloadAndSetAllValues();
                              },
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                  width: 2.0),
                              highlightedBorderColor: Colors.black,
                              focusColor: Colors.black,
                              textColor: Colors.black,
                              shape: StadiumBorder(),
                              child: Text("CHECK!"),
                            ),
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      )
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }

  int getRandom(int number) {
    Random random = Random();
    int randomNumber = random.nextInt(number);
    return randomNumber;
  }

  colorizeGradients() {
    gradient1 = getRandom(4);
    gradient2 = getRandom(4);
    colorizeGradient2();
  }

  colorizeGradient2() {
    while (gradient1 == gradient2) {
      gradient2 = getRandom(4);
    }
  }

  maximizeTransitionWidget() {
    transitionWidth = MediaQuery.of(context).size.width;
    transitionHeight = MediaQuery.of(context).size.height;
    borderRadius = 0.0;
    FocusScope.of(context).requestFocus(FocusNode());
  }

  minimizeTransitionWidget() {
    transitionWidth = 0.1;
    transitionHeight = 0.1;
    borderRadius = 50.0;
    FocusScope.of(context).requestFocus(FocusNode());
  }

  void downloadAndSetAllValues() {
    Function changeBackground() {
      maximizeTransitionWidget();
      int gradientMemory = gradient2;
      gradient1 = gradientMemory;
      colorizeGradient2();
    }

    if (name.isNotEmpty && name != "n") {
      setState(() {
        age = "???";
        country1 = "";
        country2 = "";
        country3 = "";
        probability1 = "???";
        probability2 = "???";
        probability3 = "???";
      });

      networkBrain.downloadAge(name, "DE").then((value) {
        age = value.toString() + " years old";
        changeBackground();
      });

      networkBrain.downloadNationality(name, "DE").then((value) {
        setState(() {
          probability1 = (value[0].probability * 100).toStringAsFixed(2) + "% ";
          probability2 = (value[1].probability * 100).toStringAsFixed(2) + "% ";
          probability3 = (value[2].probability * 100).toStringAsFixed(2) + "% ";
          country1 = countryCodesParser.parseName(value[0].country_id);
          country2 = countryCodesParser.parseName(value[1].country_id);
          country3 = countryCodesParser.parseName(value[2].country_id);
          shareButtonVisibility = true;
        });
      });
    } else {
      print("Error: insert Name");
    }
  }
}
