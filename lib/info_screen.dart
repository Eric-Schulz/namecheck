import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoScreen extends StatefulWidget {
  static String id = "info_screen";

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          color: Colors.black87,
        ),
        Center(
          child: Container(
            padding: EdgeInsets.all(50),
            child: Column(
              children: <Widget>[
                Hero(
                    tag: "infoIcon",
                    child: Icon(
                      Icons.info_outline,
                      size: 120,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "This App was created by Eric Schulz. Thank you for testing! Please send some feedback to Eric_S@gmx.net or via: ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                FlatButton(
                  onPressed: () =>
                      launch("https://www.linkedin.com/in/-eric-schulz/"),
                  textColor: Colors.blue,
                  child: Text("LinkedIn"),
                ),
                FlatButton(
                  onPressed: () =>
                      launch("https://github.com/Eric-Schulz/namecheck"),
                  textColor: Colors.yellow,
                  child: Text("GitHub"),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
