import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/dDay.dart';

part 'p_d_day_provider.g.dart';

@riverpod
class DDaysData extends _$DDaysData {
  late Box<DDay> myBox;

  @override
  Future<List<DDay>> build() async {
    myBox = await Hive.openBox<DDay>('myBox');
    return myBox.values.toList();
  }

  Future<void> addDDay(DDay dday) async {
    await myBox.add(dday);
    state = AsyncValue.data([...state.value ?? [], dday]);
  }

  Future<void> deleteDDay(int index) async {
    await myBox.deleteAt(index);
    state = AsyncValue.data(myBox.values.toList());
  }
}
