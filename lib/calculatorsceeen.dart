// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text("PIC Price Calculator")),
      ),
    );
  }
}
