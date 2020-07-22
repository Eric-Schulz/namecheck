import 'package:flutter/material.dart';
import 'package:namecheck/info_screen.dart';
import 'home_screen.dart';
import 'package:flutter/services.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'nameCheck',
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        InfoScreen.id: (context) => InfoScreen(),
    },
    );
  }
}
