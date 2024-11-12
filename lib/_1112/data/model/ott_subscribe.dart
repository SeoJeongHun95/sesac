import 'package:freezed_annotation/freezed_annotation.dart';

part 'ott_subscribe.freezed.dart';
part 'ott_subscribe.g.dart';

@freezed
class OttSubscribe with _$OttSubscribe {
  factory OttSubscribe({
    required String serviceName,
    required DateTime nextPaymentDay,
    required String cost,
    required String icon,
  }) = _OttSubscribe;

  factory OttSubscribe.fromJson(Map<String, dynamic> json) =>
      _$OttSubscribeFromJson(json);
}
