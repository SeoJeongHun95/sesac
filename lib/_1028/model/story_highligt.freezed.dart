// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_highligt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoryHighligt {
  String get id => throw _privateConstructorUsedError;
  String get imgPath => throw _privateConstructorUsedError;

  /// Create a copy of StoryHighligt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoryHighligtCopyWith<StoryHighligt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryHighligtCopyWith<$Res> {
  factory $StoryHighligtCopyWith(
          StoryHighligt value, $Res Function(StoryHighligt) then) =
      _$StoryHighligtCopyWithImpl<$Res, StoryHighligt>;
  @useResult
  $Res call({String id, String imgPath});
}

/// @nodoc
class _$StoryHighligtCopyWithImpl<$Res, $Val extends StoryHighligt>
    implements $StoryHighligtCopyWith<$Res> {
  _$StoryHighligtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoryHighligt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imgPath = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoryHighligtImplCopyWith<$Res>
    implements $StoryHighligtCopyWith<$Res> {
  factory _$$StoryHighligtImplCopyWith(
          _$StoryHighligtImpl value, $Res Function(_$StoryHighligtImpl) then) =
      __$$StoryHighligtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String imgPath});
}

/// @nodoc
class __$$StoryHighligtImplCopyWithImpl<$Res>
    extends _$StoryHighligtCopyWithImpl<$Res, _$StoryHighligtImpl>
    implements _$$StoryHighligtImplCopyWith<$Res> {
  __$$StoryHighligtImplCopyWithImpl(
      _$StoryHighligtImpl _value, $Res Function(_$StoryHighligtImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoryHighligt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imgPath = null,
  }) {
    return _then(_$StoryHighligtImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoryHighligtImpl implements _StoryHighligt {
  _$StoryHighligtImpl({required this.id, required this.imgPath});

  @override
  final String id;
  @override
  final String imgPath;

  @override
  String toString() {
    return 'StoryHighligt(id: $id, imgPath: $imgPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryHighligtImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, imgPath);

  /// Create a copy of StoryHighligt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryHighligtImplCopyWith<_$StoryHighligtImpl> get copyWith =>
      __$$StoryHighligtImplCopyWithImpl<_$StoryHighligtImpl>(this, _$identity);
}

abstract class _StoryHighligt implements StoryHighligt {
  factory _StoryHighligt(
      {required final String id,
      required final String imgPath}) = _$StoryHighligtImpl;

  @override
  String get id;
  @override
  String get imgPath;

  /// Create a copy of StoryHighligt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoryHighligtImplCopyWith<_$StoryHighligtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
