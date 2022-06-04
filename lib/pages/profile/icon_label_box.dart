// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class IconLabelBox extends StatelessWidget {
  final dynamic icon, color;
  final String primaryLabel, secondaryLabel;
  const IconLabelBox({
    Key? key,
    required this.icon,
    required this.color,
    required this.primaryLabel,
    required this.secondaryLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, size.height * 0.01, 0, 0),
          child: Center(
            child: Text(
              primaryLabel,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Center(
          child: Text(
            secondaryLabel,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
