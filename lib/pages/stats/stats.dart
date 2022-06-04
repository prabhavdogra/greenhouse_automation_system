import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Container(
        width: size.width * 0.8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Text('Text'),
        ),
      ),
    );
  }
}