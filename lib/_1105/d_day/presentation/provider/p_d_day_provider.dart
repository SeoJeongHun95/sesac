import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/dDay.dart';

part 'p_d_day_provider.g.dart';

@riverpod
class DDaysData extends _$DDaysData {
  @override
  List<DDay> build() {
    return [];
  }

  void addDDay(DDay dday) async {
    state = [...state, dday];
  }

  void deleteDDay(DDay dday) {
    state = [...state.where((element) => element.id != dday.id)];
  }
}
