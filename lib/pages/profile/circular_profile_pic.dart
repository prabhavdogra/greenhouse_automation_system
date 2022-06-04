// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class CircularProfilePic extends StatelessWidget {
  const CircularProfilePic({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          child: CircleAvatar(
            radius: size.height * 0.06,
            backgroundColor: Color.fromARGB(255, 247, 159, 118),
            child: CircleAvatar(
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: size.height * 0.02,
                  child: Icon(
                    Icons.camera_alt,
                    // size: 15.0,
                    size: size.height * 0.03,
                    color: Color(0xFF404040),
                  ),
                ),
              ),
              radius: size.height * 0.055,
              backgroundImage: AssetImage('assets/images/profile_pic.png'),
            ),
          ),
        ));
  }
}
