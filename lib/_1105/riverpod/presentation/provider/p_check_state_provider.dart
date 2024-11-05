import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'p_check_state_provider.g.dart';

@riverpod
class Check extends _$Check {
  @override
  bool build() {
    return false;
  }

  void onCheck(value) {
    state = value;
  }
}
