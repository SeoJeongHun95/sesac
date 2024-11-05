import 'package:flutter/material.dart';

class ColumPage extends StatefulWidget {
  const ColumPage({super.key});

  @override
  State<ColumPage> createState() => _ColumPageState();
}

class _ColumPageState extends State<ColumPage> {
  MainAxisAlignment? axis;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "ColumPage",
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: axis ?? MainAxisAlignment.center,
            children: [
              Image.asset("lib/assets/imgs/pet_hoso_dog.png"),
              Image.asset("lib/assets/imgs/pet_hoso_dog.png"),
              Image.asset("lib/assets/imgs/pet_hoso_dog.png"),
              Image.asset("lib/assets/imgs/pet_hoso_dog.png"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _chageAxis();
          });
        },
        child: const Icon(Icons.sort_rounded),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    axis = MainAxisAlignment.center;
  }

  void _chageAxis() {
    switch (axis) {
      case MainAxisAlignment.center:
        axis = MainAxisAlignment.end;
      case MainAxisAlignment.end:
        axis = MainAxisAlignment.spaceAround;
      case MainAxisAlignment.spaceAround:
        axis = MainAxisAlignment.spaceBetween;
      case MainAxisAlignment.spaceBetween:
        axis = MainAxisAlignment.spaceEvenly;
      case MainAxisAlignment.spaceEvenly:
        axis = MainAxisAlignment.start;
      case MainAxisAlignment.start:
        axis = MainAxisAlignment.center;
      default:
        MainAxisAlignment.center;
    }
  }
}
