import 'package:counter_with_inherit/features/counter_app/di/counter_inherited.dart';
import 'package:counter_with_inherit/features/counter_app/ui/counter_button.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: CounterInherited.of(context).count,
        builder: (_, int count, __) {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CounterButton(
                  icon: const Icon(Icons.remove),
                  onPressed: CounterInherited.of(context).decrement,
                ),
                Text(
                  '$count',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                CounterButton(
                  icon: const Icon(Icons.add),
                  onPressed: CounterInherited.of(context).increment,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
