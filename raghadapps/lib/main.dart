import 'package:flutter/material.dart';
import 'package:raghadapps/Calculatorscreen.dart';
import 'package:raghadapps/Counterscreen.dart';
import 'package:raghadapps/Homescreen.dart';
import 'package:raghadapps/loginscreen.dart';

void main() {
  runApp(Myapp());
}

// بخليه كلاس ودجت وعاد علئ حسب وش النوع
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // لما اسوي رن هدي تطلع
      initialRoute: LoginScreen.routName,
      routes: {
        LoginScreen.routName: (context) => LoginScreen(),
        HomeScreen.routName: (context) => HomeScreen(),
        CounterScreen.routName: (context) => CounterScreen(),
        CalculatorScreen.routName: (context) => CalculatorScreen()
      },
    );
  }
}
