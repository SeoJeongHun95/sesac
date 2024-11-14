import 'package:flutter/material.dart';

import '../vm/view_model.dart';

class MvvmPage extends StatefulWidget {
  const MvvmPage({super.key, required this.viewModel});

  final ViewModel viewModel;

  @override
  State<MvvmPage> createState() => _MvvmPageState();
}

class _MvvmPageState extends State<MvvmPage> {
  late Future<String> _greetingMessage;

  @override
  void initState() {
    super.initState();

    _greetingMessage = widget.viewModel.getGreetingMessage(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: FutureBuilder(
            future: _greetingMessage,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return const Text("Error");
              } else {
                return Text(snapshot.data ?? "데이터없음");
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _greetingMessage = widget.viewModel.getGreetingMessage(1);
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
