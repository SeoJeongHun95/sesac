import 'package:flutter/material.dart';

import 'widgets/w_avator.dart';
import 'widgets/w_story_highlight.dart';

class InstaMyPage extends StatelessWidget {
  const InstaMyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: const Text("モモ🍑"),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.local_hospital_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.list_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const AvatorWidget(),
            StoryHighlightWidget(),
          ],
        ),
      ),
    );
  }
}
