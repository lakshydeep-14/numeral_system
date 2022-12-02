// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:numeral_system/numeral_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Demo());
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numeral System"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //By Default i.e INTERNATIONAL
              NumeralSystem(digit: 934023),

              //ADDING TEXTSTYLE
              NumeralSystem(
                  digit: 198765987,
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),

              // After decimal 5 digits
              NumeralSystem(
                numberSystem: NumberSystem.indian,
                digit: 987387659876,
                afterDecimalDigits: 5,
              ),

              //2 digits
              NumeralSystem(
                digit: 195659876,
                numberSystem: NumberSystem.indian,
                afterDecimalDigits: 2,
              ),
            ]),
      ),
    );
  }
}
