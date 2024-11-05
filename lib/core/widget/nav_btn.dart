import 'package:flutter/material.dart';

class NavBtn extends StatelessWidget {
  final Widget page;
  final String name;
  const NavBtn({super.key, required this.name, required this.page});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        fixedSize: const Size.fromWidth(120),
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => page,
          ),
        );
      },
      child: Text(name),
    );
  }
}
