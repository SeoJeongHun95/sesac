import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialButtonsWidget extends StatefulWidget {
  const SocialButtonsWidget({super.key});

  @override
  State<SocialButtonsWidget> createState() => _SocialButtonsWidgetState();
}

class _SocialButtonsWidgetState extends State<SocialButtonsWidget> {
  bool favoritFlg = false;
  bool bookmarkFlg = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        favoritFlg = !favoritFlg;
                      });
                    },
                    icon: Icon(
                      favoritFlg
                          ? CupertinoIcons.heart
                          : CupertinoIcons.heart_fill,
                      color: Colors.red,
                      size: 26,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.chat_bubble),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    bookmarkFlg = !bookmarkFlg;
                  });
                },
                icon: Icon(
                  bookmarkFlg
                      ? CupertinoIcons.bookmark
                      : CupertinoIcons.bookmark_fill,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("9999 like"),
          )
        ],
      ),
    );
  }
}
