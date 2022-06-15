// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: unused_local_variable
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:greenhouse_automation_system/pages/login/background.dart';
import 'package:greenhouse_automation_system/components/rounded_button.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String emailID = '', password = '', errorMessage = 'a';
    Future<String> authenticateUser(String email, String password) async {
      final dynamic apiUrl = Uri.parse("http://10.0.2.2:3000/api/auth/login");
      var response = await http.post(
        apiUrl,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': '$email',
          'password': '$password',
        }),
      );
      if (response.statusCode == 400) {
        setState(() {
          errorMessage = response.body;
        });
        print(errorMessage);
        print('11');
        return '';
      }
      print('22');
      Map responseData = jsonDecode(response.body);
      return responseData['token'];
    }

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
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: size.width * 0.8,
                child: SingleChildScrollView(
                  child: TextField(
                    controller: passwordController,
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
                      onPressed: () async {
                        final String email = emailController.text;
                        final String password = passwordController.text;
                        final String response =
                            await authenticateUser(email, password);
                        //print(response);
                        //print('11');
                        //print("Clicked");
                        if (response != '') {
                          Navigator.pushNamed(context, '/home');
                        }
                      },
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                //child: Text('a'),
                child: Text('$errorMessage'),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
