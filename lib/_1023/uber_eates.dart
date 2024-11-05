import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widgets/w_ads.dart';
import 'widgets/w_body1.dart';

const Color menuGrey = Color.fromRGBO(140, 140, 140, 1);
const Color uberMint = Color.fromRGBO(40, 182, 174, 1);

class UberEatesPage extends StatelessWidget {
  const UberEatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
        centerTitle: false,
        title: const Text(
          "성동구 자동차시장1길 64",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 120),
            const BodyWidget1(),
            const Gap(8),
            const AdsWidgets(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.grey[200],
        destinations: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home_filled,
              color: uberMint,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_rounded,
              color: menuGrey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.heart_broken_rounded,
              color: menuGrey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.receipt_rounded,
              color: menuGrey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_accessibility_rounded,
              color: menuGrey,
            ),
          ),
        ],
      ),
    );
  }
}
