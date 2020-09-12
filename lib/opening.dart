import 'dart:async';

import 'package:SplashScreen/splashhome.dart';
import 'package:flutter/material.dart';

class StartingScreen extends StatefulWidget {
  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  startTime() async {
    return Timer(Duration(milliseconds: 700), changeScreen);
  }

  @override
  void initState() {
    startTime();
    super.initState();
  }

  void changeScreen() {
    Navigator.pushReplacement(
        context, PageRouteBuilder(transitionDuration: Duration(milliseconds: 1200),pageBuilder: (context, animation, secondaryAnimation) => SplashHome(),));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade900,
      child: Center(
        child: TweenAnimationBuilder(curve: Curves.easeIn,
          duration: Duration(milliseconds: 400),
          tween: Tween<double>(begin: 3, end: 1.0),
          builder: (context, value, child) {
            return Transform.rotate(
              angle: 180 * value,
              child: Hero(
                tag: "logo",
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 100 * value,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
