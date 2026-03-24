import 'package:flutter/material.dart';
import '../../data/counter_repository.dart';
import '../../domain/counter_model.dart';

class CounterController extends ChangeNotifier {
  final CounterRepository repository;

  late CounterModel counter;

  CounterController(this.repository) {
    counter = repository.getInitialCounter();
  }

  int get value => counter.value;

  void increment() {
    counter.value++;
    notifyListeners();
  }

  void decrement() {
    counter.value--;
    notifyListeners();
  }
}
