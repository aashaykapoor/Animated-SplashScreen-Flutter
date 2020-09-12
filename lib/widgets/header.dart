import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 110),
      child: SingleChildScrollView(
              child: Container(
          alignment: Alignment.bottomLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: "logo",
                child: Icon(
                  Icons.ac_unit,
                  size: 70,
                  color: Colors.green,
                ),
              ),
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 800),
                builder: (context, value, child) {
                  return Opacity(
                      opacity: value,
                      child: Padding(
                        padding: EdgeInsets.only(top: value * 20),
                        child: child,
                      ));
                },
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Text("Login to Continue")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
