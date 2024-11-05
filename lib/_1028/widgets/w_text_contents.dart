import 'package:flutter/material.dart';

class TextContentWidget extends StatelessWidget {
  const TextContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("今日はカフェで勉強中。キュピット❤️"),
          Text("イケボの彼氏募集中です、DM待ってます〜"),
          Text("アラポ以上のおじさんは🙏🙏"),
        ],
      ),
    );
  }
}
