// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: unused_local_variable
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:greenhouse_automation_system/main.dart';
import 'package:greenhouse_automation_system/pages/login/background.dart';
import 'package:greenhouse_automation_system/components/rounded_button.dart';
import 'package:greenhouse_automation_system/services/signup_auth.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  String errorMessage = '';
  bool hidePassword = true;
  bool hideConfirmPassword = true;
  @override
  Widget build(BuildContext context) {
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
                        controller: firstNameController,
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
                        controller: lastNameController,
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
                  controller: emailController,
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
                    controller: passwordController,
                    obscureText: hidePassword,
                    decoration: InputDecoration(
                      hintText: '********',
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                        icon: hidePassword
                            ? Icon(Icons.visibility)
                            : Icon(
                                Icons.visibility_off,
                              ),
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
                    controller: confirmPasswordController,
                    obscureText: hideConfirmPassword,
                    decoration: InputDecoration(
                      hintText: '********',
                      labelText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            hideConfirmPassword = !hideConfirmPassword;
                          });
                        },
                        icon: hideConfirmPassword
                            ? Icon(Icons.visibility)
                            : Icon(
                                Icons.visibility_off,
                              ),
                      ),
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
                      onPressed: () async {
                        final String firstName = firstNameController.text;
                        final String lastName = lastNameController.text;
                        final String email = emailController.text;
                        final String password = passwordController.text;
                        final String confirmPassword =
                            confirmPasswordController.text;
                        //print(firstName);
                        //print(lastName);
                        //print(email);
                        //print(password);
                        if (confirmPassword == password) {
                          await UserSignUp(Auth, firstName + " " + lastName,
                              email, password);
                          setState(() {
                            errorMessage = Auth.errorMessage;
                          });
                        } else {
                          setState(() {
                            errorMessage = 'Passwords do not match';
                          });
                        }
                        print(errorMessage);
                        if (errorMessage == '') {
                          Navigator.pop(context);
                        }
                      },
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Center(
                    child: Text(
                      '$errorMessage',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
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

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
