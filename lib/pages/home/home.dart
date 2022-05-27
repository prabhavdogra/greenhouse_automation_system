// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: unused_local_variable
import 'package:flutter/material.dart';
import 'package:greenhouse_automation_system/pages/home/background.dart';
import 'package:greenhouse_automation_system/components/rounded_button.dart';

class Home extends StatelessWidget {
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
            Container(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      'GREENHOUSE AUTOMATION SYSTEM',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Center(
                      child: Image.asset(
                    'assets/vectors/greenhouse.png',
                    width: size.width * 0.8,
                  )),
                  Container(
                    width: size.width * 0.7,
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: RoundedButton(
                      text: 'LOGIN',
                      buttonColor: Colors.green[500],
                      textColor: Colors.white,
                      onPressedFunction: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      size: size,
                    ),
                  ),
                  Container(
                    width: size.width * 0.7,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                    child: RoundedButton(
                      text: 'SIGNUP',
                      buttonColor: Colors.green[300],
                      textColor: Colors.white,
                      onPressedFunction: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      size: size,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
