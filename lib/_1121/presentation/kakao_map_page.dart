import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

Color kakaoBrown = const Color(0xff3A1D1D);
Color kakaoYellow = const Color(0xfff9e000);

class KakaoMapPage extends StatefulWidget {
  const KakaoMapPage({super.key});

  @override
  State<KakaoMapPage> createState() => _KakaoMapPageState();
}

class _KakaoMapPageState extends State<KakaoMapPage> {
  late KakaoMapController mapController;
  int currentLevel = 0;

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        scrolledUnderElevation: 0,
        backgroundColor: kakaoYellow,
        title: const Text("KakaoMap"),
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            KakaoMap(
              onMapCreated: ((controller) {
                mapController = controller;
              }),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  MaterialButton(
                    onPressed: () => mapController
                        .setCenter(LatLng(37.557360297, 127.085365411)),
                    color: Colors.white,
                    child: const Text("우리집으로"),
                  ),
                  const SizedBox(width: 8),
                  MaterialButton(
                    onPressed: () => mapController
                        .panTo(LatLng(37.560352280, 127.064474155)),
                    color: Colors.white,
                    child: const Text("새싹으로"),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).viewPadding.bottom + 8,
              right: 4,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    IconButton.filled(
                      onPressed: () {
                        currentLevel--;
                        if (currentLevel <= 1) currentLevel = 1;
                        mapController.setLevel(currentLevel);

                        setState(() {});
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(kakaoYellow),
                      ),
                      color: kakaoBrown,
                      icon: const Icon(Icons.add),
                    ),
                    const Gap(4),
                    IconButton.filled(
                      onPressed: () {
                        currentLevel++;
                        if (currentLevel >= 14) currentLevel = 14;
                        mapController.setLevel(currentLevel);

                        setState(() {});
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(kakaoYellow),
                      ),
                      color: kakaoBrown,
                      icon: const Icon(Icons.remove),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
