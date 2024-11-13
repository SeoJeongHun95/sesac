import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'britness_provider.g.dart';

@riverpod
class Britness extends _$Britness {
  @override
  bool build() {
    return true;
  }

  changeBritness() {
    state = !state;
  }
}
