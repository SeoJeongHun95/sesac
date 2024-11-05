import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/p_count.dart';

class ProviderCountWidget extends StatelessWidget {
  const ProviderCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CounterNotifier>(
            builder: (context, value, child) => Text(
              "Count : ${value.count}",
              style: const TextStyle(fontSize: 26),
            ),
          ),
          ElevatedButton(
            onPressed: () => context.read<CounterNotifier>().increment(),
            child: const Text("+1"),
          ),
          ElevatedButton(
            onPressed: () => context.read<CounterNotifier>().decrement(),
            child: const Text("-1"),
          ),
        ],
      ),
    );
  }
}
