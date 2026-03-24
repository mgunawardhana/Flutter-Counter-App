import 'package:flutter/material.dart';
import 'features/counter/presentation/pages/counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Counter',
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}
