import 'package:flutter/material.dart';
import 'package:test_app/features/counter/data/counter_repository.dart';
import 'package:test_app/features/counter/presentation/state/counter_controller.dart';
import '../widgets/counter_card.dart';

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  late CounterController controller;

  @override
  void initState() {
    super.initState();

    controller = CounterController(CounterRepository());

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Clean Counter')),
      body: Center(
        child: CounterCard(
          value: controller.value,
          onIncrement: controller.increment,
          onDecrement: controller.decrement,
        ),
      ),
    );
  }
}
