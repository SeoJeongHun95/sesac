import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/dDay.dart';

part 'p_d_day_provider.g.dart';

@riverpod
class DDaysData extends _$DDaysData {
  late Box<DDay> dDayBox;

  @override
  Future<List<DDay>> build() async {
    dDayBox = await Hive.openBox<DDay>('dDayBox');
    return dDayBox.values.toList();
  }

  Future<void> addDDay(DDay dday) async {
    await dDayBox.add(dday);
    state = AsyncValue.data([...state.value ?? [], dday]);
  }

  Future<void> deleteDDay(int index) async {
    await dDayBox.deleteAt(index);
    state = AsyncValue.data(dDayBox.values.toList());
  }
}
