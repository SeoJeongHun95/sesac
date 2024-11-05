import 'package:flutter/material.dart';

class DaysWidget extends StatelessWidget {
  const DaysWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Text(
        "2024/10/28",
        style: TextStyle(color: Colors.black38),
      ),
    );
  }
}
