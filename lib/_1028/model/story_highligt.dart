import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_highligt.freezed.dart';

@freezed
class StoryHighligt with _$StoryHighligt {
  factory StoryHighligt({
    required String id,
    required String imgPath,
  }) = _StoryHighligt;
}
