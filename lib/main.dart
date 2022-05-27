// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:greenhouse_automation_system/pages/preloader/preloader.dart';
import 'package:greenhouse_automation_system/pages/home/home.dart';
import 'package:greenhouse_automation_system/pages/login/login.dart';
import 'package:greenhouse_automation_system/pages/signup/signup.dart';

void main() => runApp(MaterialApp(initialRoute: '/home', routes: {
      '/loading': (context) => Preloader(),
      '/home': (context) => Home(),
      '/login': (context) => Login(),
      '/signup': (context) => Signup(),
    }));
