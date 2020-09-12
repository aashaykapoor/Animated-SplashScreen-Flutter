import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    
      decoration: BoxDecoration(
          color: Colors.green,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(1, 6),
            )
          ],
          borderRadius: BorderRadius.circular(10)),
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: Text(
        "Login",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold),
      )),
    );
  }
}

