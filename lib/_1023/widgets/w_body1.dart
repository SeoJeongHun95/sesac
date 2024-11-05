import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'w_food_icon.dart';

class BodyWidget1 extends StatelessWidget {
  const BodyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Gap(8),
                    Text(
                      "음식배달",
                      style: TextStyle(fontSize: 16),
                    ),
                    Gap(24),
                    Text(
                      "가게배달",
                      style: TextStyle(fontSize: 16),
                    ),
                    Gap(24),
                    Text(
                      "장보기쇼핑",
                      style: TextStyle(fontSize: 16),
                    ),
                    Gap(24),
                    Text(
                      "포장",
                      style: TextStyle(fontSize: 16),
                    ),
                    Gap(24),
                    Text(
                      "선물하기",
                      style: TextStyle(fontSize: 16),
                    ),
                    Gap(24),
                    Text(
                      "혜택모아보기",
                      style: TextStyle(fontSize: 16),
                    ),
                    Gap(24),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FoodIcon(
                  foodName: "한식",
                  foodImgPath:
                      "lib/assets/imgs/foodIcons/food_ishiyaki_bibinba.png",
                ),
                FoodIcon(
                  foodName: "중식",
                  foodImgPath: "lib/assets/imgs/foodIcons/food_syouronpou.png",
                ),
                FoodIcon(
                  foodName: "패스트푸드",
                  foodImgPath:
                      "lib/assets/imgs/foodIcons/food_zei3_takeout.png",
                ),
                FoodIcon(
                  foodName: "빵",
                  foodImgPath:
                      "lib/assets/imgs/foodIcons/idouhanbai_pan_bread.png",
                ),
                FoodIcon(
                  foodName: "도시락",
                  foodImgPath: "lib/assets/imgs/foodIcons/obentou_conbini.png",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FoodIcon(
                  foodName: "분식",
                  foodImgPath: "lib/assets/imgs/foodIcons/food_toppogi.png",
                ),
                FoodIcon(
                  foodName: "일식",
                  foodImgPath: "lib/assets/imgs/foodIcons/food_nikuzushi.png",
                ),
                FoodIcon(
                  foodName: "피자",
                  foodImgPath:
                      "lib/assets/imgs/foodIcons/food_pizza_cut_salami.png",
                ),
                FoodIcon(
                  foodName: "커피",
                  foodImgPath:
                      "lib/assets/imgs/foodIcons/coffee_chilled_cup.png",
                ),
                FoodIcon(
                  foodName: "편의점",
                  foodImgPath:
                      "lib/assets/imgs/foodIcons/convenience_store_24.png",
                ),
              ],
            ),
            const Divider(
              thickness: 0.3,
              height: 4,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "음식배달에서 더보기",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
