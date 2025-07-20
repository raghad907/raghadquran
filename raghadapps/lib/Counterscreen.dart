import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  static const String routName = 'counter';

  @override
  State<StatefulWidget> createState() {
    return CounterscreenState();
  }
}

class CounterscreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 40),
            ),
            FloatingActionButton(
              onPressed: () {
                counter++;
                setState(() {});
                print(counter);
              },
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
/*

 */
