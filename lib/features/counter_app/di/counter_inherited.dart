import 'package:flutter/material.dart';
import 'package:counter_with_inherit/features/counter_app/domain/counter_controller.dart';

class CounterInherited extends InheritedWidget {
  final CounterController counterController;

  const CounterInherited({
    super.key,
    required this.counterController,
    required super.child,
  });

  static CounterController? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<CounterInherited>()
        ?.counterController;
  }

  static CounterController of(BuildContext context) {
    final CounterController? counterController = maybeOf(context);
    assert(counterController != null, 'No CounterController found in context');
    return counterController!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
