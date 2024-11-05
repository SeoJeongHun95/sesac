import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'p_count_provider.g.dart';

@riverpod
class Count extends _$Count {
  @override
  int build() {
    return 0;
  }

  void increse() {
    state++;
  }

  void decrese() {
    state--;
  }
}
