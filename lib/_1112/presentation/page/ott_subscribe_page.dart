import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../data/model/ott_subscribe.dart';
import '../provider/ott_subscribe_data_provider.dart';

class OttSubscribePage extends ConsumerWidget {
  const OttSubscribePage({super.key});

  String formatDate(DateTime date) {
    return "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<OttSubscribe>> ottData =
        ref.watch(ottSubscribeDataProviderProvider);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text("OTT 구독 관리"),
      ),
      body: SafeArea(
        child: ottData.when(
          data: (data) => ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
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
                width: 40,
                height: 40,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image, size: 40),
              ),
              title: Text(data[index].serviceName),
              subtitle:
                  Text("다음 결제일: ${formatDate(data[index].nextPaymentDay)}"),
              trailing: Text("₩ ${data[index].cost}"),
            ),
            separatorBuilder: (context, index) => const Gap(8),
            itemCount: data.length,
          ),
          error: (error, stackTrace) {
            debugPrint("Error fetching OTT data: $error");
            return const Center(child: Text("데이터를 불러오는데 실패했습니다. 다시 시도해주세요."));
          },
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
