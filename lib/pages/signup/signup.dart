// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: unused_local_variable
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:greenhouse_automation_system/pages/login/background.dart';
import 'package:greenhouse_automation_system/components/rounded_button.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    String firstName = '';
    String lastName = '';
    String email = '';
    String password = '';
    String confirmPassword = '';
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Background(
          size: size,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Center(
                  child: Image.asset(
                    'assets/vectors/signup_art.png',
                    width: size.width * 0.75,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.1, 0, size.width * 0.1, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                      width: size.width * 0.395,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'John',
                          labelText: 'First Name',
                          prefixIcon: Icon(Icons.supervised_user_circle),
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                      width: size.width * 0.395,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Dow',
                          labelText: 'Last Name',
                          contentPadding: EdgeInsets.zero,
                          prefixIcon: Icon(Icons.supervised_user_circle),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(0),
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
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                width: size.width * 0.8,
                child: SingleChildScrollView(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '********',
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility),
                      ),
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                width: size.width * 0.8,
                child: SingleChildScrollView(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '********',
                      labelText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock),
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
                      text: 'Signup',
                      color: Colors.green[500],
                      onPressed: () {
                        /////////// Authenticating User
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
