import '../domain/counter_model.dart';

class CounterRepository {
  CounterModel getInitialCounter() {
    return CounterModel(value: 0);
  }
}
