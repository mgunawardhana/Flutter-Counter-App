import 'package:flutter/material.dart';
import 'features/counter/presentation/pages/counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Counter',
      home: CounterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),

      body: Center(
        child: Card(
          elevation: 8, //shadow - elavation
          margin: EdgeInsets.all(
            20,
          ), //apply 20px on all sides - top, bottom, left, right
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "$count",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: decrement,
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(60, 60), // 🔥 button size
                      ),
                      child: Text('-', style: TextStyle(fontSize: 30)),
                    ),

                    SizedBox(width: 20),

                    ElevatedButton(
                      onPressed: increment,
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(60, 60), // 🔥 button size
                      ),
                      child: Text('+', style: TextStyle(fontSize: 30)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
