library numeral_system;

import 'package:flutter/material.dart';
// Numeral System type
// International means ONES, TENS, HUNDREDS, THOUSANDS, TEN THOUSAND, HUNDRED THOUSAND, MILLIONS, TEN MILLION, and so on.
// Indian means ONES, TENS, HUNDRED, THOUSAND, TEN THOUSAND, LAKH, TEN LAKH, CRORE, TEN CRORE, and so on.

enum NumberSystem { indian, international }

// class for numneral system
class NumeralSystem extends StatefulWidget {
  // number system type, either INTERNATIONAL or INDIAN
  // By default, it's INTERNATIONAL.
  final NumberSystem numberSystem;

  // the number which you want to give
  final num digit;

  // textstyle
  // By default it's color is black
  final TextStyle textStyle;

  //int value to show number of digits after decimal
  //By default it's 3 which mean it will show 2 digits after decimal.
  final int afterDecimalDigits;

  const NumeralSystem(
      {super.key,
      this.numberSystem = NumberSystem.international,
      required this.digit,
      this.afterDecimalDigits = 3,
      this.textStyle = const TextStyle(color: Colors.black)});

  @override
  State<NumeralSystem> createState() => _NumeralSystemState();
}

class _NumeralSystemState extends State<NumeralSystem> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.numberSystem == NumberSystem.indian
          ? _indian(widget.digit)
          : _international(widget.digit),
      style: widget.textStyle,
    );
  }

  double getNumber(double input) => double.parse(
      double.parse('$input').toStringAsFixed(widget.afterDecimalDigits));
  _indian(num number) {
    if (number == 0) {
      return '0';
    } else if (number <= 999) {
      return number.toString();
    } else if (number > 999 && number <= 99999) {
      return "${getNumber((number / 1000))} K";
    } else if (number > 99999 && number <= 9999999) {
      return "${getNumber((number / 100000))} L";
    } else if (number > 9999999 && number <= 999999999) {
      return "${getNumber((number / 10000000))} Cr";
    } else {
      return "${getNumber((number / 1000000000))} Ar";
    }
  }

  _international(num number) {
    if (number == 0) {
      return '0';
    } else if (number <= 999) {
      return number.toString();
    } else if (number > 999 && number <= 999999) {
      return "${getNumber((number / 1000))} K";
    } else if (number > 999999 && number <= 999999999) {
      return "${getNumber((number / 1000000))} M";
    } else if (number > 999999999 && number <= 999999999999) {
      return "${getNumber((number / 1000000000))} B";
    } else {
      return "${getNumber((number / 1000000000000))} T";
    }
  }
}
