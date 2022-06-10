// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stats extends StatefulWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  final dropdownItems = ['1 DAY', '1 WEEK ', '1 MONTH'];
  String? dropdownValue = '1 DAY';

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
        actions: [
          Container(
            alignment: Alignment.centerRight,
            width: size.width * 0.3,
            child: DropdownButton<String>(
              dropdownColor: Colors.white,
              underline: DropdownButtonHideUnderline(child: Container()),
              value: dropdownValue,
              icon: Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.white,
              ),
              isExpanded: true,
              onChanged: (value) => setState(() => {
                    //value = this.dropdownValue,
                    this.dropdownValue = value,
                  }),
              items: dropdownItems.map(buildMenuItem).toList(),
            ),
          ),
        ],
        elevation: 0,
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
        backgroundColor: Color(0xFF201c24),
        title: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'STATISTICS',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 20,
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
      body: Container(),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(0, 0, 10, 0),
          minLeadingWidth: 20,
          title: Text(
            item,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                fontSize: 12,
                letterSpacing: 1.2,
                color: Color(0xFF808080),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
}
