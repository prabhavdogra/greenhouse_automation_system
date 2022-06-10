// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddSensor extends StatefulWidget {
  const AddSensor({Key? key}) : super(key: key);

  @override
  State<AddSensor> createState() => _AddSensorState();
}

class _AddSensorState extends State<AddSensor> {
  String dropdownValue = 'Actuator';
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
        title: Text(
          'Add New Hardware',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromARGB(213, 238, 238, 237),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: size.height * 0.03),
                child: Text('Hardware Details',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, size.width * 0.1, 0, 0),
                width: size.width * 0.8,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Sensor ID',
                    labelText: 'Sensor ID',
                    prefixIcon: Icon(Icons.code),
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, size.width * 0.05, 0, 0),
                width: size.width * 0.8,
                child: DropdownButtonFormField(
                  // label: Text('Sensor Type'),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  // value: dropdownValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['Actuator', 'Sensor']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, size.width * 0.05, 0, 0),
                width: size.width * 0.8,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Sensor Location',
                    labelText: 'Sensor Location',
                    prefixIcon: Icon(Icons.code),
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
