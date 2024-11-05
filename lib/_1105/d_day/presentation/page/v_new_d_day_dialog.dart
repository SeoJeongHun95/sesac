import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/widget/jua_text.dart';
import '../../data/model/dDay.dart';
import '../provider/p_d_day_provider.dart';

class NewDDayDialog extends ConsumerStatefulWidget {
  const NewDDayDialog({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NewDDayDialogState();
}

class _NewDDayDialogState extends ConsumerState<NewDDayDialog> {
  DateTime? selectedDate;
  var titleTextEditingController = TextEditingController();
  var contentsTextEditingController = TextEditingController();

  @override
  void dispose() {
    titleTextEditingController.dispose();
    contentsTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              trailing: IconButton(
                onPressed: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: selectedDate ?? DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  setState(() {
                    selectedDate = picked;
                  });
                },
                icon: const Icon(Icons.calendar_month_outlined),
              ),
              title: JuaText(
                str: selectedDate == null
                    ? "날자를 선택해주세요"
                    : "${selectedDate?.year}년 ${selectedDate?.month}월 ${selectedDate?.day}일 ",
                color: Colors.black,
              ),
            ),
            TextField(
              controller: titleTextEditingController,
              maxLines: 1,
              decoration: const InputDecoration(hintText: "제목을입력하세요"),
            ),
            TextField(
              controller: contentsTextEditingController,
              maxLines: 5,
              decoration: const InputDecoration(hintText: "내용을입력하세요"),
            ),
            const Gap(18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("취소"),
                ),
                ElevatedButton(
                  onPressed: () {
                    selectedDate != null
                        ? ref.read(dDaysDataProvider.notifier).addDDay(
                              DDay(
                                id: const Uuid().v4(),
                                day: selectedDate!,
                                title: titleTextEditingController.text,
                                contents: contentsTextEditingController.text,
                              ),
                            )
                        : null;

                    Navigator.pop(context);
                  },
                  child: const Text("추가"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
