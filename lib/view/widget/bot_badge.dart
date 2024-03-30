import 'package:flutter/material.dart';

class BotBadge extends StatelessWidget {
  const BotBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border:
              Border.all(color: Theme.of(context).colorScheme.outlineVariant),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.0),
          child: Text('bot'),
        ),
      ),
    );
  }
}
