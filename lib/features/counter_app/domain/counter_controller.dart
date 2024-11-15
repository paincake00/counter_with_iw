import 'package:counter_with_inherit/features/counter_app/data/counter_repository.dart';
import 'package:flutter/foundation.dart';

class CounterController {
  final CounterRepository _counterRepository;

  CounterController({
    required CounterRepository counterRepository,
  }) : _counterRepository = counterRepository;

  late final ValueNotifier<int> _countValue = ValueNotifier<int>(
    _counterRepository.counter,
  );

  ValueListenable<int> get count => _countValue;

  Future<void> increment() async {
    _countValue.value = await _counterRepository.increment();
  }

  Future<void> decrement() async {
    _countValue.value = await _counterRepository.decrement();
  }
}
