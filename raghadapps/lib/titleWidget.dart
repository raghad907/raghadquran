import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  String titlename;

  TitleWidget({required this.titlename});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
          color: Colors.black,
          child: Text(
            titlename,
            textAlign: TextAlign.center, //يكون بالنص
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          )),
    );
  }
}
