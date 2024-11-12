// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ott_subscribe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OttSubscribeImpl _$$OttSubscribeImplFromJson(Map<String, dynamic> json) =>
    _$OttSubscribeImpl(
      serviceName: json['serviceName'] as String,
      nextPaymentDay: DateTime.parse(json['nextPaymentDay'] as String),
      cost: json['cost'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$OttSubscribeImplToJson(_$OttSubscribeImpl instance) =>
    <String, dynamic>{
      'serviceName': instance.serviceName,
      'nextPaymentDay': instance.nextPaymentDay.toIso8601String(),
      'cost': instance.cost,
      'icon': instance.icon,
    };
