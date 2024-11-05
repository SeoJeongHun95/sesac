import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/p_count_provider.dart';

class CounterWidget extends ConsumerWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int cnt = ref.watch(countProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("$cnt"),
        ElevatedButton(
          onPressed: () => ref.read(countProvider.notifier).increse(),
          child: const Text("increse"),
        ),
        ElevatedButton(
          onPressed: () => ref.read(countProvider.notifier).decrese(),
          child: const Text("decrese"),
        ),
      ],
    );
  }
}
