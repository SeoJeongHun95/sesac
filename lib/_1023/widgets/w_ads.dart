import 'dart:async';

import 'package:flutter/material.dart';

import '../v_adspage.dart';

List<String> adList = [
  "lib/core/assets/imgs/ads/ad0.png",
  "lib/core/assets/imgs/ads/ad1.png",
  "lib/core/assets/imgs/ads/ad2.png",
  "lib/core/assets/imgs/ads/ad3.png",
  "lib/core/assets/imgs/ads/ad4.png",
  "lib/core/assets/imgs/ads/ad5.png",
  "lib/core/assets/imgs/ads/ad6.png",
];

class AdsWidgets extends StatefulWidget {
  const AdsWidgets({super.key});

  @override
  State<AdsWidgets> createState() => _AdsWidgetsState();
}

class _AdsWidgetsState extends State<AdsWidgets> {
  // ignore: unused_field
  Timer? _timer;
  late int currPage = 0;
  late int nextPage;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, index) => Image.asset(
              adList[index],
              fit: BoxFit.fill,
            ),
            controller: _pageController,
          ),
          Positioned(
            bottom: 4,
            right: 4,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withAlpha(200),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AdsPage()),
                );
              },
              child: const Text("광고더보기"),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _adsWidgetEvents();
    super.initState();
  }

  void _adsWidgetEvents() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      currPage = _pageController.page!.toInt();
      nextPage = currPage + 1;

      if (nextPage > adList.length - 1) {
        nextPage = 0;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 1),
          curve: Curves.decelerate,
        );
      }

      _pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.linear,
      );
    });
  }
}
