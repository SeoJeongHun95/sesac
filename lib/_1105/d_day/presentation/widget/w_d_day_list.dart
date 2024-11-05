import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
          DateTime.now().year, DateTime.now().month, DateTime.now().day);

      if (currTime.difference(dday).inDays > 0) {
        result = "D+${currTime..difference(dday).inDays}";
      } else if (currTime.difference(dday).inDays == 0) {
        result = "D-Day";
      } else if (currTime.difference(dday).inDays < 0) {
        result = "D${currTime.difference(dday).inDays}";
      }

      return result;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: asyncDDaysData.when(
        data: (dDaysData) => ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: JuaText(
              str: dDaysData[index].title,
              color: Colors.black87,
            ),
            leading: JuaText(
              str: calcDDay(dDaysData[index].day),
              color: Colors.red,
            ),
            trailing: IconButton(
              onPressed: () =>
                  ref.read(dDaysDataProvider.notifier).deleteDDay(index),
              icon: const Icon(Icons.delete),
            ),
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
      ),
    );
  }
}
