import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Email",
              focusColor: Colors.green,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Password",
              focusColor: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                alignment: Alignment.bottomRight,
                child: Text("Forgot Password?",
                    style: TextStyle(
                      color: Colors.black45,
                    ))),
          )
        ],
      ),
    );
  }
}
