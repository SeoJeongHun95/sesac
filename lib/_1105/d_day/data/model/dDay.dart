import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'dDay.freezed.dart';
part 'dDay.g.dart';

@HiveType(typeId: 0)
@freezed
class DDay with _$DDay {
  factory DDay({
    @HiveField(0) required String id,
    @HiveField(1) required DateTime day,
    @HiveField(3) required String title,
    @HiveField(4) required String contents,
  }) = _DDay;
}
