import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final dynamic buttonColor;
  final dynamic textColor;
  final dynamic onPressedFunction;
  const RoundedButton({
    Key? key,
    required this.size,
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.onPressedFunction,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: buttonColor, // Background Color
        ),
        onPressed: onPressedFunction,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
