// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final dynamic color;
  final dynamic onPressed;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(primary: color, shape: StadiumBorder()),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'OktaNeue',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
