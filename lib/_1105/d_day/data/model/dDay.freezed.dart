// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dDay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DDay {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime get day => throw _privateConstructorUsedError;
  @HiveField(3)
  String get title => throw _privateConstructorUsedError;
  @HiveField(4)
  String get contents => throw _privateConstructorUsedError;

  /// Create a copy of DDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DDayCopyWith<DDay> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DDayCopyWith<$Res> {
  factory $DDayCopyWith(DDay value, $Res Function(DDay) then) =
      _$DDayCopyWithImpl<$Res, DDay>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) DateTime day,
      @HiveField(3) String title,
      @HiveField(4) String contents});
}

/// @nodoc
class _$DDayCopyWithImpl<$Res, $Val extends DDay>
    implements $DDayCopyWith<$Res> {
  _$DDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? title = null,
    Object? contents = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DDayImplCopyWith<$Res> implements $DDayCopyWith<$Res> {
  factory _$$DDayImplCopyWith(
          _$DDayImpl value, $Res Function(_$DDayImpl) then) =
      __$$DDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) DateTime day,
      @HiveField(3) String title,
      @HiveField(4) String contents});
}

/// @nodoc
class __$$DDayImplCopyWithImpl<$Res>
    extends _$DDayCopyWithImpl<$Res, _$DDayImpl>
    implements _$$DDayImplCopyWith<$Res> {
  __$$DDayImplCopyWithImpl(_$DDayImpl _value, $Res Function(_$DDayImpl) _then)
      : super(_value, _then);

  /// Create a copy of DDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? title = null,
    Object? contents = null,
  }) {
    return _then(_$DDayImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DDayImpl implements _DDay {
  _$DDayImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.day,
      @HiveField(3) required this.title,
      @HiveField(4) required this.contents});

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final DateTime day;
  @override
  @HiveField(3)
  final String title;
  @override
  @HiveField(4)
  final String contents;

  @override
  String toString() {
    return 'DDay(id: $id, day: $day, title: $title, contents: $contents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DDayImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.contents, contents) ||
                other.contents == contents));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, day, title, contents);

  /// Create a copy of DDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DDayImplCopyWith<_$DDayImpl> get copyWith =>
      __$$DDayImplCopyWithImpl<_$DDayImpl>(this, _$identity);
}

abstract class _DDay implements DDay {
  factory _DDay(
      {@HiveField(0) required final String id,
      @HiveField(1) required final DateTime day,
      @HiveField(3) required final String title,
      @HiveField(4) required final String contents}) = _$DDayImpl;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  DateTime get day;
  @override
  @HiveField(3)
  String get title;
  @override
  @HiveField(4)
  String get contents;

  /// Create a copy of DDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DDayImplCopyWith<_$DDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
