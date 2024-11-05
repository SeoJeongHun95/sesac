import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../data/bank_data.dart';
import '../model/bank.dart';

Color bankGreen = const Color.fromARGB(255, 126, 204, 83);

class BankHistoryWidget extends StatefulWidget {
  const BankHistoryWidget({super.key});

  @override
  State<BankHistoryWidget> createState() => _BankHistoryWidgetState();
}

class _BankHistoryWidgetState extends State<BankHistoryWidget> {
  final bh = bank_history;
  bool currMoneyFlg = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "잔액",
                style: TextStyle(fontSize: 16, color: Colors.green[600]),
              ),
              const Gap(4),
              Switch(
                value: currMoneyFlg,
                activeColor: bankGreen,
                onChanged: (value) => setState(() => currMoneyFlg = value),
              ),
            ],
          ),
          const Divider(),
          Expanded(
            child: ListView.separated(
              itemCount: bh.length,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: (bh[index].io == InputOutput.INPUT
                          ? Colors.blue[200]
                          : Colors.red[200])!,
                      width: 4,
                    ),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bh[index].days,
                            style: const TextStyle(color: Colors.black45),
                          ),
                          const Gap(8),
                          Text(
                            bh[index].contents,
                            style: const TextStyle(fontSize: 18),
                          ),
                          const Gap(8),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Gap(16),
                          Text(
                            "￦ ${bh[index].changMoney}",
                            style: const TextStyle(fontSize: 18),
                          ),
                          Visibility(
                            visible: currMoneyFlg,
                            child: Text(
                              "￦ ${bh[index].currMoney}",
                              style: const TextStyle(color: Colors.black45),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
