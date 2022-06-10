// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFF201c24),
    ));

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
        ),
        toolbarHeight: 70, // Set this height
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/backstats.svg",
            height: 18,
            width: 18,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Row(
              children: [
                Text(
                  '1 Week',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            alignment: Alignment.centerRight,
          ),
        ],
        backgroundColor: Color(0xFF201c24),
        title: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'STATISTICS',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
                Text(
                  'Greenhouse SMVDU',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF24F0B6),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        width: size.width * 0.8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          // child: TabBar(
          //   tabs: ['First', 'Second'],
          // ),
        ),
      ),
    );
  }
}
