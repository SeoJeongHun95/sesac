import 'package:flutter/material.dart';

class AvatorWidget extends StatelessWidget {
  const AvatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: CircleAvatar(
                    child: Image.asset(
                      "lib/assets/imgs/photo_jidori.png",
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "101",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Posts")
                  ],
                ),
              ),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "2874",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Followers")
                  ],
                ),
              ),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "2547",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Followings")
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: const Size.fromWidth(double.maxFinite),
                backgroundColor: Colors.white54,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                foregroundColor: Colors.black),
            onPressed: () {},
            child: const Text("Edit Profile"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text("Story Highlights"),
          ),
          const Divider(
            height: 4,
          ),
        ],
      ),
    );
  }
}
