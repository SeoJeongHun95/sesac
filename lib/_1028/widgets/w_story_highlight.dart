import 'package:flutter/material.dart';

import '../data/story_highlight_data.dart';
import '../model/story_highligt.dart';
import 'w_gridview_item.dart';

class StoryHighlightWidget extends StatelessWidget {
  StoryHighlightWidget({super.key});

  final List<StoryHighligt> _shData = shData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            for (StoryHighligt sh in _shData)
              GridViewItemWidget(
                imgPath: sh.imgPath,
              ),
          ],
        ),
      ),
    );
  }
}
