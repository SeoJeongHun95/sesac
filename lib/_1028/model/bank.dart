import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank.freezed.dart';

@freezed
class Bank with _$Bank {
  factory Bank({
    required InputOutput io,
    required String days,
    required String changMoney,
    required String currMoney,
    @Default("") String contents,
  }) = _Bank;
}

// ignore: constant_identifier_names
enum InputOutput { INPUT, OUTPUT }
