import 'package:flutter/material.dart';

class BotBadge extends StatelessWidget {
  const BotBadge({super.key, this.textScaler});

  final TextScaler? textScaler;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.outlineVariant,
          ),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text('bot', textScaler: textScaler),
        ),
      ),
    );
  }
}
