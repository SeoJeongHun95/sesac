import 'package:flutter/material.dart';

class AdsPage extends StatelessWidget {
  const AdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "뭐",
                style: TextStyle(fontSize: 40),
              ),
              Image.asset("lib/assets/imgs/chibikko_gang_baby.png"),
            ],
          ),
        ),
      ),
    );
  }
}
