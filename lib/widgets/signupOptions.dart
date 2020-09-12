import 'package:flutter/material.dart';
class SignupOptions extends StatelessWidget {
  const SignupOptions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("New User? "),
          Text(
            "Sign up",
            style: TextStyle(color: Colors.green),
          )
        ],
      ),
    );
  }
}
