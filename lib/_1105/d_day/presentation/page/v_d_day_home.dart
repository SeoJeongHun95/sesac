import 'package:flutter/material.dart';

import '../../../../core/widget/jua_text.dart';
import '../widget/w_d_day_list.dart';
import 'v_new_d_day_dialog.dart';

class DDayHomePage extends StatelessWidget {
  const DDayHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: JuaText(
          str: "D-Day",
          color: Colors.red[400],
          fontsize: 26,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: const SafeArea(
        child: DDayListWidget(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const NewDDayDialog(),
          );
        },
        label: JuaText(str: "D-Day추가", color: Colors.black),
      ),
    );
  }
}
