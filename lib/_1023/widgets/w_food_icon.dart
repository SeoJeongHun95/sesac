import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class FoodIcon extends StatelessWidget {
  String foodImgPath;

  String foodName;
  FoodIcon({super.key, required this.foodImgPath, required this.foodName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey[100],
            ),
            child: Image.asset(
              foodImgPath,
              height: 64,
              width: 64,
              errorBuilder: (context, error, stackTrace) => Image.asset(
                "lib/assets/imgs/foodIcons/no_image_square.jpg",
                height: 64,
                width: 64,
              ),
            ),
          ),
          const Gap(4),
          Text(foodName)
        ],
      ),
    );
  }
}
