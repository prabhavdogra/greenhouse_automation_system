// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenhouse_automation_system/pages/profile/circular_profile_pic.dart';
import 'package:greenhouse_automation_system/pages/profile/icon_label_box.dart';

List termsAndConditions = [
  'We may change these Terms at any time for a variety of reasons, such as to reflect changes in applicable law or updates to Services, and to account for new Services or functionality.',
  'We may terminate your Subscription effective at the end of a billing cycle by providing at least 30 days’ prior written notice to you without refund for any prior period.'
];

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
      body: Container(
        width: size.width,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(
                      size.width * 0.1, size.width * 0.1, size.width * 0.1, 0),
                  alignment: Alignment.center,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(210, 241, 241, 241),
                        borderRadius: BorderRadius.circular(size.height * 0.02),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(top: size.height * 0.08),
                        width: double.infinity,
                        child: Column(children: <Widget>[
                          Text(
                            'Greenhouse SMVDU Admin',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[700],
                            ),
                            textAlign: TextAlign.center,
                          ),
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
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                15, size.height * 0.04, 15, 0),
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
                                    secondaryLabel: 'Premium'),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width,
                  child:
                      Positioned(top: 0, child: CircularProfilePic(size: size)),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                top: size.height * 0.04,
              ),
              child: Text('Terms and Conditions',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
