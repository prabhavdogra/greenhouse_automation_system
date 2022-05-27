// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Preloader extends StatelessWidget {
  const Preloader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCube(
      color: Colors.white,
      size: 50.0,
      // itemBuilder: (BuildContext context, int index) {
      //   return DecoratedBox(
      //     decoration: BoxDecoration(
      //       color: index.isEven ? Colors.red : Colors.green,
      //     ),
      //   );
      // },
    );
  }
}
