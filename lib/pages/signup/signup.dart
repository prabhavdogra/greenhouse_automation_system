// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: unused_local_variable
import 'package:flutter/material.dart';
import 'package:greenhouse_automation_system/pages/login/background.dart';
// import 'package:greenhouse_automation_system/components/rounded_button.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      size: size,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.08,
          ),
        ],
      ),
    );
  }
}
