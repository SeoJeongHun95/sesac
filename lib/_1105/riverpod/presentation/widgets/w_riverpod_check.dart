import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/p_check_state_provider.dart';

class RiverpodCheckWidget extends ConsumerWidget {
  const RiverpodCheckWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool checked = ref.watch(checkProvider);

    return CheckboxListTile(
      title: const Text("Riverpod Checked?"),
      value: checked,
      onChanged: (value) {
        ref.read(checkProvider.notifier).onCheck(value);
      },
    );
  }
}
