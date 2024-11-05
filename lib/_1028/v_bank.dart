import 'package:flutter/material.dart';

import 'widgets/w_bank_history.dart';

class BankPage extends StatelessWidget {
  const BankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 126, 204, 83),
        leading: const Icon(
          Icons.sort_rounded,
          color: Colors.white,
          size: 32,
        ),
        title: const Text(
          "***** - **********",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: BankHistoryWidget(),
      ),
    );
  }
}
