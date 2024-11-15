import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final Future<void> Function() onPressed;
  final Icon icon;

  const CounterButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        icon: icon,
        iconSize: 40,
        onPressed: onPressed,
      ),
    );
  }
}
