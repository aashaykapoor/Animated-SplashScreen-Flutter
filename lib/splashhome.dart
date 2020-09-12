import 'package:SplashScreen/widgets/header.dart';
import 'package:SplashScreen/widgets/loginbutton.dart';
import 'package:SplashScreen/widgets/loginform.dart';
import 'package:SplashScreen/widgets/signupOptions.dart';
import 'package:flutter/material.dart';

class SplashHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [Colors.black26, Colors.white10, Colors.white])),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Header(),
                SizedBox(
                  height: 15,
                ),
                Expanded(flex: 3, child: LoginForm()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [LoginButton(), SignupOptions()],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
