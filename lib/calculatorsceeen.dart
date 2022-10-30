// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pic_price_calculator/calculatorbrain.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int templateSizeX = 0;
  int templateSizeY = 0;
  double templatePrice = 0;
  int printSizeX = 0;
  int printSizeY = 0;
  double customerPrice = 0;

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
                    CalculatorBrain calculator = CalculatorBrain(
                        templateX: templateSizeX,
                        templateY: templateSizeY,
                        templatePrice: templatePrice,
                        printX: printSizeX,
                        printY: printSizeY,
                        customerPrice: customerPrice);
                    customerPrice = calculator.calculateCustomerPrice();
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
                    CalculatorBrain calculator = CalculatorBrain(
                        templateX: templateSizeX,
                        templateY: templateSizeY,
                        templatePrice: templatePrice,
                        printX: printSizeX,
                        printY: printSizeY,
                        customerPrice: customerPrice);
                    customerPrice = calculator.calculateCustomerPrice();
                  });
                },
              ),
            ),
            Text(
              "Template Price",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                hintText: "00.00",
                hintStyle: TextStyle(color: Colors.white54),
                border: InputBorder.none,
              ),
              showCursor: false,
              onChanged: (value) {
                templatePrice = double.parse(value);
                CalculatorBrain calculator = CalculatorBrain(
                    templateX: templateSizeX,
                    templateY: templateSizeY,
                    templatePrice: templatePrice,
                    printX: printSizeX,
                    printY: printSizeY,
                    customerPrice: customerPrice);
                customerPrice = calculator.calculateCustomerPrice();
              },
            ),
            Divider(),
            // PRINT SIZE STARTS HERE
            // PRINT SIZE STARTS HERE
            // PRINT SIZE STARTS HERE
            // PRINT SIZE STARTS HERE
            // PRINT SIZE STARTS HERE
            SizedBox(
              height: 10,
            ),
            Text(
              "Customer Print Size",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "X = ${printSizeX.toString()}",
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
                value: printSizeX.toDouble(),
                min: 0.0,
                max: 200.0,
                onChanged: (double newValue) {
                  setState(() {
                    printSizeX = newValue.toInt();
                    CalculatorBrain calculator = CalculatorBrain(
                        templateX: templateSizeX,
                        templateY: templateSizeY,
                        templatePrice: templatePrice,
                        printX: printSizeX,
                        printY: printSizeY,
                        customerPrice: customerPrice);
                    customerPrice = calculator.calculateCustomerPrice();
                  });
                },
              ),
            ),
            Text(
              "Y = ${printSizeY.toString()}",
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
                value: printSizeY.toDouble(),
                min: 0.0,
                max: 200.0,
                onChanged: (double newValue) {
                  setState(() {
                    printSizeY = newValue.toInt();
                    CalculatorBrain calculator = CalculatorBrain(
                        templateX: templateSizeX,
                        templateY: templateSizeY,
                        templatePrice: templatePrice,
                        printX: printSizeX,
                        printY: printSizeY,
                        customerPrice: customerPrice);
                    customerPrice = calculator.calculateCustomerPrice();
                  });
                },
              ),
            ),
            Text(
              "Customer Price",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              "R${customerPrice.toStringAsFixed(2)}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
