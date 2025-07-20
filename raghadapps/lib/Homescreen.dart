import 'package:flutter/material.dart';
import 'package:raghadapps/itemwidget.dart';
import 'package:raghadapps/titleWidget.dart';

class HomeScreen extends StatelessWidget {
  static const String routName = 'homescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("raghad app"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        leading: Icon(Icons.arrow_back),
      ),

      body: SingleChildScrollView(
        // حق السكرول

        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('الرجوع لشاشة الدخول')),
            Row(
              children: [
                // عشان احط لون حطيت حاوية
                //اكسباندديد حق التوافق مع الشاشه
                TitleWidget(titlename: 'met'),
                SizedBox(
                  // الفراق بين الكلمتين
                  width: 3,
                ),
                TitleWidget(titlename: 'vag'),
              ],
            ),
            Row(
              //حق الصور
              children: [
                Itemwidget(Imagepath: 'assets/images/OIP.webp'),
                Itemwidget(Imagepath: 'assets/images/R.jpg'),
              ],
            ),
            Row(
              //حق الصور
              children: [
                Itemwidget(Imagepath: 'assets/images/OIP (1).webp'),
                Itemwidget(Imagepath: 'assets/images/R (1).jpg'),
              ],
            ),
            Row(
              //حق الصور
              children: [
                Itemwidget(Imagepath: 'assets/images/OIP.webp'),
                Itemwidget(Imagepath: 'assets/images/R.jpg'),
              ],
            ),
            Row(
              //حق الصور
              children: [
                Itemwidget(Imagepath: 'assets/images/OIP.webp'),
                Itemwidget(Imagepath: 'assets/images/R.jpg'),
              ],
            ),
          ],
        ),
      ),
//],

      //)
    );
  }
}
