//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  String text;
  Function onButtonClick;

  CalcButton({required this.text, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
            onPressed: () {
              onButtonClick(text);
            },
            child: Text(
              text,
              style: TextStyle(
                fontSize: 35,
              ),
            )));
  }
}
