import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '_1022/colum_row/colum.dart';
import '_1022/colum_row/row.dart';
import '_1022/container/container.dart';
import '_1023/uber_eates.dart';
import '_1028/v_bank.dart';
import '_1028/v_insta_home.dart';
import '_1104/presentation/page/v_provider.dart';
import '_1105/d_day/presentation/page/v_d_day_home.dart';
import '_1105/riverpod/presentation/page/v_riverpod.dart';
import '_1107/presentation/page/v_restaurant.dart';
import '_1111/page/view/p_pomodoro_timer.dart';
import '_1112/presentation/page/ott_subscribe_page.dart';
import 'core/theme/britness_provider.dart';
import 'core/widget/nav_btn.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var brightness = ref.watch(britnessProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "HOMEPAGE",
        ),
        actions: [
          IconButton(
            onPressed: () =>
                ref.read(britnessProvider.notifier).changeBritness(),
            icon: Icon(
              brightness ? Icons.dark_mode_rounded : Icons.brightness_4_rounded,
            ),
          )
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavBtn(name: "ROW", page: RowPage()),
                  NavBtn(name: "COLUM", page: ColumPage()),
                  NavBtn(name: "Container", page: ContainerPage()),
                ],
              ),
              NavBtn(name: "UberEats", page: UberEatesPage()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavBtn(name: "Insta", page: InstaHomePage()),
                  NavBtn(name: "Bank", page: BankPage()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavBtn(name: "Provider", page: ProviderPage()),
                  NavBtn(name: "Riverpod", page: RiverpodPage()),
                ],
              ),
              NavBtn(name: "D-Day", page: DDayHomePage()),
              NavBtn(name: "Restaurant", page: RestaurantPage()),
              NavBtn(name: "Timer", page: PomodoroTimerPage()),
              NavBtn(name: "OTTSubs", page: OttSubscribePage()),
            ],
          ),
        ),
      ),
    );
  }
}
