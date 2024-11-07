import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../core/widget/jua_text.dart';
import '../provider/p_d_day_provider.dart';

class DDayListWidget extends ConsumerWidget {
  const DDayListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncDDaysData = ref.watch(dDaysDataProvider);

    String calcDDay(DateTime dday) {
      String result = "";

      final currTime = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
      );

      if (currTime.difference(dday).inDays > 0) {
        result = "D+${currTime.difference(dday).inDays}";
      } else if (currTime.difference(dday).inDays == 0) {
        result = "D-Day";
      } else if (currTime.difference(dday).inDays < 0) {
        result = "D${currTime.difference(dday).inDays}";
      }

      return result;
    }

    return asyncDDaysData.when(
      data: (dDaysData) => ListView.separated(
        itemBuilder: (context, index) => ExpansionTile(
          title: Row(
            children: [
              JuaText(
                str: calcDDay(dDaysData[index].day),
                color: Colors.red,
              ),
              const Gap(16),
              JuaText(
                str: dDaysData[index].title,
                color: Colors.black87,
              ),
            ],
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 160,
                      child: JuaText(
                        str: dDaysData[index].contents,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () =>
                        ref.read(dDaysDataProvider.notifier).deleteDDay(index),
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ),
            ),
            const Gap(16),
          ],
        ),
        separatorBuilder: (context, index) => const Divider(
          height: 4,
        ),
        itemCount: dDaysData.length,
      ),
      error: (error, stackTrace) => Center(
        child: JuaText(str: "데이터로드에 실패하였습니다."),
      ),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
