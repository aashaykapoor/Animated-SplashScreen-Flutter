import 'package:SplashScreen/opening.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:StartingScreen(), 
      //SplashHome(),
      theme: ThemeData(
        primaryColor: Colors.green
      ),
    );
  }
}
