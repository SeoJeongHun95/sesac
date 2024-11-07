// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return _Restaurant.fromJson(json);
}

/// @nodoc
mixin _$Restaurant {
  String get restaurantName => throw _privateConstructorUsedError;
  int? get restaurantnameNumber => throw _privateConstructorUsedError;
  String? get restaurantnameNote => throw _privateConstructorUsedError;
  int? get restaurantnameScore => throw _privateConstructorUsedError;

  /// Serializes this Restaurant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res, Restaurant>;
  @useResult
  $Res call(
      {String restaurantName,
      int? restaurantnameNumber,
      String? restaurantnameNote,
      int? restaurantnameScore});
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res, $Val extends Restaurant>
    implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantName = null,
    Object? restaurantnameNumber = freezed,
    Object? restaurantnameNote = freezed,
    Object? restaurantnameScore = freezed,
  }) {
    return _then(_value.copyWith(
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantnameNumber: freezed == restaurantnameNumber
          ? _value.restaurantnameNumber
          : restaurantnameNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurantnameNote: freezed == restaurantnameNote
          ? _value.restaurantnameNote
          : restaurantnameNote // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantnameScore: freezed == restaurantnameScore
          ? _value.restaurantnameScore
          : restaurantnameScore // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantImplCopyWith<$Res>
    implements $RestaurantCopyWith<$Res> {
  factory _$$RestaurantImplCopyWith(
          _$RestaurantImpl value, $Res Function(_$RestaurantImpl) then) =
      __$$RestaurantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String restaurantName,
      int? restaurantnameNumber,
      String? restaurantnameNote,
      int? restaurantnameScore});
}

/// @nodoc
class __$$RestaurantImplCopyWithImpl<$Res>
    extends _$RestaurantCopyWithImpl<$Res, _$RestaurantImpl>
    implements _$$RestaurantImplCopyWith<$Res> {
  __$$RestaurantImplCopyWithImpl(
      _$RestaurantImpl _value, $Res Function(_$RestaurantImpl) _then)
      : super(_value, _then);

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantName = null,
    Object? restaurantnameNumber = freezed,
    Object? restaurantnameNote = freezed,
    Object? restaurantnameScore = freezed,
  }) {
    return _then(_$RestaurantImpl(
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantnameNumber: freezed == restaurantnameNumber
          ? _value.restaurantnameNumber
          : restaurantnameNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurantnameNote: freezed == restaurantnameNote
          ? _value.restaurantnameNote
          : restaurantnameNote // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantnameScore: freezed == restaurantnameScore
          ? _value.restaurantnameScore
          : restaurantnameScore // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantImpl implements _Restaurant {
  _$RestaurantImpl(
      {required this.restaurantName,
      this.restaurantnameNumber,
      this.restaurantnameNote,
      this.restaurantnameScore});

  factory _$RestaurantImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantImplFromJson(json);

  @override
  final String restaurantName;
  @override
  final int? restaurantnameNumber;
  @override
  final String? restaurantnameNote;
  @override
  final int? restaurantnameScore;

  @override
  String toString() {
    return 'Restaurant(restaurantName: $restaurantName, restaurantnameNumber: $restaurantnameNumber, restaurantnameNote: $restaurantnameNote, restaurantnameScore: $restaurantnameScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantImpl &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.restaurantnameNumber, restaurantnameNumber) ||
                other.restaurantnameNumber == restaurantnameNumber) &&
            (identical(other.restaurantnameNote, restaurantnameNote) ||
                other.restaurantnameNote == restaurantnameNote) &&
            (identical(other.restaurantnameScore, restaurantnameScore) ||
                other.restaurantnameScore == restaurantnameScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, restaurantName,
      restaurantnameNumber, restaurantnameNote, restaurantnameScore);

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantImplCopyWith<_$RestaurantImpl> get copyWith =>
      __$$RestaurantImplCopyWithImpl<_$RestaurantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantImplToJson(
      this,
    );
  }
}

abstract class _Restaurant implements Restaurant {
  factory _Restaurant(
      {required final String restaurantName,
      final int? restaurantnameNumber,
      final String? restaurantnameNote,
      final int? restaurantnameScore}) = _$RestaurantImpl;

  factory _Restaurant.fromJson(Map<String, dynamic> json) =
      _$RestaurantImpl.fromJson;

  @override
  String get restaurantName;
  @override
  int? get restaurantnameNumber;
  @override
  String? get restaurantnameNote;
  @override
  int? get restaurantnameScore;

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestaurantImplCopyWith<_$RestaurantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
