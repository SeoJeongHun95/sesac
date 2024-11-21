import 'package:flutter/material.dart';

class KakaoMapPage extends StatelessWidget {
  const KakaoMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.amber[400],
        title: const Text("KakaoMap"),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.amber[400],
          child: const Center(
            child: Text("카카오맵자리임"),
          ),
        ),
      ),
    );
  }
}
