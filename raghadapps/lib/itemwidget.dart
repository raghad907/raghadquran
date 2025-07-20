import 'package:flutter/cupertino.dart';

class Itemwidget extends StatelessWidget {
  String Imagepath;

  Itemwidget({required this.Imagepath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      children: [
        Image.asset(Imagepath),
      ],
    ));
  }
}
