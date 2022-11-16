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
  TextEditingController controllerX1 = TextEditingController();
  TextEditingController controllerY1 = TextEditingController();
  TextEditingController controllerX2 = TextEditingController();
  TextEditingController controllerY2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(child: Text("PIC Price Calculator"))),

      backgroundColor: Colors.transparent,

//BACKGROUND IMAGE OPEN

      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.jpg"), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),

//BACKGROUND IMAGE CLOSE

//TEMPLATE INPUT OPEN

          child: Column(
            children: [
              Text(
                "Template Size",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),

              SizedBox(
                width: 200,
                child: TextField(
                  controller: controllerX1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "X = ${templateSizeX.toString()}",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                  onChanged: (value) {
                    setState(() {
                      templateSizeX = int.parse(value);
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
              SliderTheme(
                data: SliderThemeData(
                    activeTrackColor: Colors.white,
                    thumbColor: Colors.white,
                    inactiveTrackColor: Colors.amber[700],
                    overlayColor: Colors.white60),
                child: Slider(
                  value: templateSizeX.toDouble(),
                  max: 300,
                  min: 0.0,
                  divisions: 30,
                  onChanged: (double newValue) {
                    setState(() {
                      controllerX1.clear();
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
              TextField(
                controller: controllerY1,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Y = ${templateSizeY.toString()}",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
                onChanged: (value) {
                  setState(() {
                    templateSizeY = int.parse(value);
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
              SliderTheme(
                data: SliderThemeData(
                    activeTrackColor: Colors.white,
                    thumbColor: Colors.white,
                    inactiveTrackColor: Colors.amber[700],
                    overlayColor: Colors.white60),
                child: Slider(
                  value: templateSizeY.toDouble(),
                  min: 0.0,
                  max: 300.0,
                  divisions: 30,
                  onChanged: (double newValue) {
                    setState(() {
                      controllerY1.clear();
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
                showCursor: true,
                cursorColor: Colors.white,
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

//TEMPLATE INPUT CLOSE

//CUSTOMER PRINT INPUT OPEN

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

              TextField(
                controller: controllerX2,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "X = ${printSizeX.toString()}",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
                onChanged: (value) {
                  setState(() {
                    printSizeX = int.parse(value);
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
              SliderTheme(
                data: SliderThemeData(
                    activeTrackColor: Colors.white,
                    thumbColor: Colors.white,
                    inactiveTrackColor: Colors.amber[700],
                    overlayColor: Colors.white60),
                child: Slider(
                  value: printSizeX.toDouble(),
                  divisions: 30,
                  min: 0.0,
                  max: 300.0,
                  onChanged: (double newValue) {
                    setState(() {
                      controllerX2.clear();
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
              // SizedBox(
              //   width: 200,
              //   child:
              TextField(
                controller: controllerY2,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Y = ${printSizeY.toString()}",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
                onChanged: (value) {
                  setState(() {
                    printSizeY = int.parse(value);
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

              SliderTheme(
                data: SliderThemeData(
                    activeTrackColor: Colors.white,
                    thumbColor: Colors.white,
                    inactiveTrackColor: Colors.amber[700],
                    overlayColor: Colors.white60),
                child: Slider(
                  value: printSizeY.toDouble(),
                  divisions: 30,
                  min: 0.0,
                  max: 300.0,
                  onChanged: (double newValue) {
                    setState(() {
                      controllerY2.clear();
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

//CUSTOMER PRINT INPUT CLOSE
      ),
    );
  }
}
