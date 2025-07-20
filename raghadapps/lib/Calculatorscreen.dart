import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:raghadapps/calcbutton.dart';

class CalculatorScreen extends StatefulWidget {
  static const String routName = 'calculator';

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String resultext = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('calculator'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                  color: Colors.white24,
                  child: Row(
                    children: [
                      Text(
                        resultext,
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ))),
          Expanded(
            child: Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalcButton(text: '7', onButtonClick: onDigitClick),
                    CalcButton(text: '8', onButtonClick: onDigitClick),
                    CalcButton(text: '9', onButtonClick: onDigitClick),
                    CalcButton(text: '*', onButtonClick: onOperatorclick),
                  ]),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalcButton(text: '4', onButtonClick: onDigitClick),
                    CalcButton(text: '5', onButtonClick: onDigitClick),
                    CalcButton(text: '6', onButtonClick: onDigitClick),
                    CalcButton(text: '/', onButtonClick: onOperatorclick),
                  ]),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalcButton(text: '1', onButtonClick: onDigitClick),
                    CalcButton(text: '2', onButtonClick: onDigitClick),
                    CalcButton(text: '3', onButtonClick: onDigitClick),
                    CalcButton(text: '+', onButtonClick: onOperatorclick),
                  ]),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalcButton(text: '.', onButtonClick: onDigitClick),
                    CalcButton(text: '0', onButtonClick: onDigitClick),
                    CalcButton(text: '=', onButtonClick: onEqual),
                    CalcButton(text: '-', onButtonClick: onOperatorclick),
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  void onDigitClick(String text) {
    resultext += text;
    setState(() {});
  }

  String numb = '';
  String operator = '';

  void onOperatorclick(String onclickoperat) {
    if (operator.isEmpty) {
      numb = resultext;
      operator = onclickoperat;
      resultext = '';
    } else {
      String rhs = resultext;
      calculate(numb, rhs, operator);
      resultext = '';
    }
  }

  String calculate(String numb, String rhs, String operator) {
    double num1 = double.parse(numb);
    double num2 = double.parse(rhs);
    double res = 0.0;
    if (operator == '+') {
      res = num1 + num2;
    } else if (operator == '-') {
      res = num1 - num2;
    } else if (operator == '*') {
      res = num1 * num2;
    } else if (operator == '/') {
      res = num1 / num2;
    }
    return res.toString();
  }

  void onEqual(String onequal) {
    String rhs = resultext;
    resultext = calculate(numb, rhs, operator);
    numb = '';
    operator = '';
    setState(() {});
  }
}
