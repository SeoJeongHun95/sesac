import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "ContainerPage",
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.purpleAccent,
                width: 4,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: FlutterLogo(
                size: 160,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
