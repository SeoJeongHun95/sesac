import '../model/bank.dart';

// ignore: non_constant_identifier_names
List<Bank> bank_history = [
  Bank(
    io: InputOutput.INPUT,
    days: "2024/10/10",
    changMoney: "2,600,000",
    currMoney: "2,600,000",
    contents: "(주)너의직장",
  ),
  Bank(
    io: InputOutput.OUTPUT,
    days: "2024/10/14",
    changMoney: "100,000",
    currMoney: "2,500,000",
    contents: "○○카드",
  ),
  Bank(
    io: InputOutput.OUTPUT,
    days: "2024/10/14",
    changMoney: "300,000",
    currMoney: "2,200,000",
    contents: "△△카드",
  ),
  Bank(
    io: InputOutput.OUTPUT,
    days: "2024/10/14",
    changMoney: "69,000",
    currMoney: "2,131,000",
    contents: "OO텔레콤",
  ),
];
