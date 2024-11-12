// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ott_subscribe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OttSubscribe _$OttSubscribeFromJson(Map<String, dynamic> json) {
  return _OttSubscribe.fromJson(json);
}

/// @nodoc
mixin _$OttSubscribe {
  String get serviceName => throw _privateConstructorUsedError;
  DateTime get nextPaymentDay => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this OttSubscribe to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OttSubscribe
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OttSubscribeCopyWith<OttSubscribe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OttSubscribeCopyWith<$Res> {
  factory $OttSubscribeCopyWith(
          OttSubscribe value, $Res Function(OttSubscribe) then) =
      _$OttSubscribeCopyWithImpl<$Res, OttSubscribe>;
  @useResult
  $Res call(
      {String serviceName, DateTime nextPaymentDay, String cost, String icon});
}

/// @nodoc
class _$OttSubscribeCopyWithImpl<$Res, $Val extends OttSubscribe>
    implements $OttSubscribeCopyWith<$Res> {
  _$OttSubscribeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OttSubscribe
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? nextPaymentDay = null,
    Object? cost = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      nextPaymentDay: null == nextPaymentDay
          ? _value.nextPaymentDay
          : nextPaymentDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OttSubscribeImplCopyWith<$Res>
    implements $OttSubscribeCopyWith<$Res> {
  factory _$$OttSubscribeImplCopyWith(
          _$OttSubscribeImpl value, $Res Function(_$OttSubscribeImpl) then) =
      __$$OttSubscribeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String serviceName, DateTime nextPaymentDay, String cost, String icon});
}

/// @nodoc
class __$$OttSubscribeImplCopyWithImpl<$Res>
    extends _$OttSubscribeCopyWithImpl<$Res, _$OttSubscribeImpl>
    implements _$$OttSubscribeImplCopyWith<$Res> {
  __$$OttSubscribeImplCopyWithImpl(
      _$OttSubscribeImpl _value, $Res Function(_$OttSubscribeImpl) _then)
      : super(_value, _then);

  /// Create a copy of OttSubscribe
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? nextPaymentDay = null,
    Object? cost = null,
    Object? icon = null,
  }) {
    return _then(_$OttSubscribeImpl(
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      nextPaymentDay: null == nextPaymentDay
          ? _value.nextPaymentDay
          : nextPaymentDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OttSubscribeImpl implements _OttSubscribe {
  _$OttSubscribeImpl(
      {required this.serviceName,
      required this.nextPaymentDay,
      required this.cost,
      required this.icon});

  factory _$OttSubscribeImpl.fromJson(Map<String, dynamic> json) =>
      _$$OttSubscribeImplFromJson(json);

  @override
  final String serviceName;
  @override
  final DateTime nextPaymentDay;
  @override
  final String cost;
  @override
  final String icon;

  @override
  String toString() {
    return 'OttSubscribe(serviceName: $serviceName, nextPaymentDay: $nextPaymentDay, cost: $cost, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OttSubscribeImpl &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.nextPaymentDay, nextPaymentDay) ||
                other.nextPaymentDay == nextPaymentDay) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, serviceName, nextPaymentDay, cost, icon);

  /// Create a copy of OttSubscribe
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OttSubscribeImplCopyWith<_$OttSubscribeImpl> get copyWith =>
      __$$OttSubscribeImplCopyWithImpl<_$OttSubscribeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OttSubscribeImplToJson(
      this,
    );
  }
}

abstract class _OttSubscribe implements OttSubscribe {
  factory _OttSubscribe(
      {required final String serviceName,
      required final DateTime nextPaymentDay,
      required final String cost,
      required final String icon}) = _$OttSubscribeImpl;

  factory _OttSubscribe.fromJson(Map<String, dynamic> json) =
      _$OttSubscribeImpl.fromJson;

  @override
  String get serviceName;
  @override
  DateTime get nextPaymentDay;
  @override
  String get cost;
  @override
  String get icon;

  /// Create a copy of OttSubscribe
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OttSubscribeImplCopyWith<_$OttSubscribeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
