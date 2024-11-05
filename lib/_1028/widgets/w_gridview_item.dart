import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridViewItemWidget extends StatelessWidget {
  String imgPath;

  GridViewItemWidget({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(
        imgPath,
        errorBuilder: (context, error, stackTrace) =>
            Image.asset("lib/assets/imgs/foodIcons/no_image_square.jpg"),
      ),
    );
  }
}
