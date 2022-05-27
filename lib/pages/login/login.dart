// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: unused_local_variable
import 'package:flutter/material.dart';
import 'package:greenhouse_automation_system/pages/login/background.dart';
// import 'package:greenhouse_automation_system/components/rounded_button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      size: size,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.2,
          ),
          Center(
              child: Image.asset(
            'assets/vectors/login_art.png',
            width: size.width * 0.8,
          )),
        ],
      ),
    );
  }
}
