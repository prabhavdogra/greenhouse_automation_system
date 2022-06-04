// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: unused_local_variable
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:greenhouse_automation_system/pages/login/background.dart';
import 'package:greenhouse_automation_system/components/rounded_button.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    String fullName = '';

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Background(
          size: size,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: Center(
                  child: Image.asset(
                    'assets/vectors/login_art.png',
                    width: size.width * 0.75,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                width: size.width * 0.8,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'name@gmail.com',
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.mail),
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: size.width * 0.8,
                child: SingleChildScrollView(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '********',
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.mail),
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  width: size.width * 0.7,
                  child: Center(
                    child: RoundedButton(
                      text: 'Login',
                      color: Colors.green[500],
                      onPressed: () {
                        Navigator.pushNamed(context, '/stats');
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
