import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../provider/ott_subscribe_data_provider.dart';

class OttSubscribePage extends ConsumerWidget {
  const OttSubscribePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue ottData = ref.watch(ottSubscribeDataProviderProvider);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text("OTT 구독관리"),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: ottData.when(
        data: (data) => ListView.separated(
          itemBuilder: (context, index) => ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(
                color: Colors.blue,
                width: 4,
              ),
            ),
            leading: Image.asset(
              data[index].icon,
              errorBuilder: (context, error, stackTrace) =>
                  const Text("No Image"),
            ),
            title: Text(data[index].serviceName),
            subtitle: Text(
                "다음결제일 ${data[index].nextPaymentDay.toString().split(" ")[0]}"),
            trailing: Text("₩ ${data[index].cost}"),
          ),
          separatorBuilder: (context, index) => const Gap(8),
          itemCount: data.length,
        ),
        error: (error, stackTrace) => Center(
          child: Text(error.toString()),
        ),
        loading: () => const CircularProgressIndicator(),
      )),
    );
  }
}
