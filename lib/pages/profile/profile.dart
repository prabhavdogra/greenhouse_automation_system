// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenhouse_automation_system/pages/profile/circular_profile_pic.dart';
import 'package:greenhouse_automation_system/pages/profile/icon_label_box.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            height: 30.0,
            width: 30.0,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Color.fromARGB(213, 238, 238, 237),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(size.height * 0.05,
                  size.height * 0.05, size.height * 0.05, 0),
              height: size.height * .17,
              decoration: BoxDecoration(
                color: Color.fromARGB(210, 241, 241, 241),
                borderRadius: BorderRadius.circular(size.height * 0.02),
              ),
              child: Column(
                children: <Widget>[
                  Center(
                      child: Container(
                    padding: EdgeInsets.fromLTRB(0, size.height * 0.09, 0, 0),
                    child: Text(
                      'Greenhouse SMVDU Admin',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[700],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
                  Center(
                    child: Text(
                      'greenhouse@smvdu.ac.in',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )),
          CircularProfilePic(size: size),
          Container(
            margin: EdgeInsets.fromLTRB(0, size.height * 0.25, 0, 0),
            padding: EdgeInsets.symmetric(horizontal: size.height * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconLabelBox(
                    icon: Icons.money,
                    color: Color.fromARGB(255, 240, 214, 165),
                    primaryLabel: 'Balance',
                    secondaryLabel: '10000.0 Rs'),
                IconLabelBox(
                    icon: Icons.lock_clock,
                    color: Color.fromRGBO(226, 210, 255, 1),
                    primaryLabel: 'Duration',
                    secondaryLabel: '3 Weeks'),
                IconLabelBox(
                    icon: Icons.document_scanner,
                    color: Color.fromRGBO(186, 228, 244, 1),
                    primaryLabel: 'Plan',
                    secondaryLabel: '10000.0 Rs'),
              ],
            ),
          ),
          // Container(
          //   padding: EdgeInsets.only(top: size.height * 0.35),
          //   child: Text('Helo'),
          // )
        ],
      ),
    );
  }
}
