import 'package:flutter/material.dart';
import 'package:pro1022/_1105/riverpod/presentation/widgets/w_riverpod_check.dart';
import 'package:pro1022/_1105/riverpod/presentation/widgets/w_riverpod_counter.dart';

class RiverpodPage extends StatelessWidget {
  const RiverpodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "Riverpod",
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RiverpodCheckWidget(),
              CounterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
