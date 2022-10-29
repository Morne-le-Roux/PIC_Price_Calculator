// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int templateSizeX = 0;
  int templateSizeY = 0;
  double templatePrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text("PIC Price Calculator")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Template Size",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "X = ${templateSizeX.toString()}",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SliderTheme(
              data: SliderThemeData(
                  activeTrackColor: Colors.white,
                  thumbColor: Colors.white,
                  inactiveTrackColor: Colors.amber[700],
                  overlayColor: Colors.white60),
              child: Slider(
                value: templateSizeX.toDouble(),
                min: 0.0,
                max: 120.0,
                divisions: 12,
                onChanged: (double newValue) {
                  setState(() {
                    templateSizeX = newValue.toInt();
                  });
                },
              ),
            ),
            Text(
              "Y = ${templateSizeY.toString()}",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SliderTheme(
              data: SliderThemeData(
                  activeTrackColor: Colors.white,
                  thumbColor: Colors.white,
                  inactiveTrackColor: Colors.amber[700],
                  overlayColor: Colors.white60),
              child: Slider(
                value: templateSizeY.toDouble(),
                min: 0.0,
                max: 120.0,
                divisions: 12,
                onChanged: (double newValue) {
                  setState(() {
                    templateSizeY = newValue.toInt();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
