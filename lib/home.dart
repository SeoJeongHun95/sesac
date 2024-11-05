import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '_1022/colum_row/colum.dart';
import '_1022/colum_row/row.dart';
import '_1022/container/container.dart';
import '_1023/uber_eates.dart';
import '_1028/v_bank.dart';
import '_1028/v_insta_home.dart';
import '_1104/presentation/page/v_provider.dart';
import '_1105/d_day/presentation/page/v_d_day_home.dart';
import '_1105/riverpod/presentation/page/v_riverpod.dart';
import 'core/widget/nav_btn.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "HOMEPAGE",
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NavBtn(name: "ROW", page: RowPage()),
                    Gap(16),
                    NavBtn(name: "COLUM", page: ColumPage()),
                    Gap(16),
                    NavBtn(name: "Container", page: ContainerPage()),
                  ],
                ),
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
            ],
          ),
        ),
      ),
    );
  }
}
