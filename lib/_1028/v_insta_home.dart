import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'v_insta_mypage.dart';
import 'widgets/w_days.dart';
import 'widgets/w_insta_image.dart';
import 'widgets/w_social_buttons.dart';
import 'widgets/w_text_contents.dart';

class InstaHomePage extends StatefulWidget {
  const InstaHomePage({super.key});

  @override
  State<InstaHomePage> createState() => _InstaHomePageState();
}

class _InstaHomePageState extends State<InstaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt_outlined),
        ),
        title: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const InstaMyPage(),
            ),
          ),
          child: SizedBox(
            height: 48,
            child: Image.asset(
              "lib/assets/imgs/insta_banner.png",
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.paperplane,
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InstaImageWidget(),
            SocialButtonsWidget(),
            TextContentWidget(),
            DaysWidget(),
          ],
        ),
      ),
    );
  }
}
