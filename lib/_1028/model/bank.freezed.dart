// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Bank {
  InputOutput get io => throw _privateConstructorUsedError;
  String get days => throw _privateConstructorUsedError;
  String get changMoney => throw _privateConstructorUsedError;
  String get currMoney => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankCopyWith<Bank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankCopyWith<$Res> {
  factory $BankCopyWith(Bank value, $Res Function(Bank) then) =
      _$BankCopyWithImpl<$Res, Bank>;
  @useResult
  $Res call(
      {InputOutput io,
      String days,
      String changMoney,
      String currMoney,
      String contents});
}

/// @nodoc
class _$BankCopyWithImpl<$Res, $Val extends Bank>
    implements $BankCopyWith<$Res> {
  _$BankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? io = null,
    Object? days = null,
    Object? changMoney = null,
    Object? currMoney = null,
    Object? contents = null,
  }) {
    return _then(_value.copyWith(
      io: null == io
          ? _value.io
          : io // ignore: cast_nullable_to_non_nullable
              as InputOutput,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as String,
      changMoney: null == changMoney
          ? _value.changMoney
          : changMoney // ignore: cast_nullable_to_non_nullable
              as String,
      currMoney: null == currMoney
          ? _value.currMoney
          : currMoney // ignore: cast_nullable_to_non_nullable
              as String,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankImplCopyWith<$Res> implements $BankCopyWith<$Res> {
  factory _$$BankImplCopyWith(
          _$BankImpl value, $Res Function(_$BankImpl) then) =
      __$$BankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InputOutput io,
      String days,
      String changMoney,
      String currMoney,
      String contents});
}

/// @nodoc
class __$$BankImplCopyWithImpl<$Res>
    extends _$BankCopyWithImpl<$Res, _$BankImpl>
    implements _$$BankImplCopyWith<$Res> {
  __$$BankImplCopyWithImpl(_$BankImpl _value, $Res Function(_$BankImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? io = null,
    Object? days = null,
    Object? changMoney = null,
    Object? currMoney = null,
    Object? contents = null,
  }) {
    return _then(_$BankImpl(
      io: null == io
          ? _value.io
          : io // ignore: cast_nullable_to_non_nullable
              as InputOutput,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as String,
      changMoney: null == changMoney
          ? _value.changMoney
          : changMoney // ignore: cast_nullable_to_non_nullable
              as String,
      currMoney: null == currMoney
          ? _value.currMoney
          : currMoney // ignore: cast_nullable_to_non_nullable
              as String,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BankImpl implements _Bank {
  _$BankImpl(
      {required this.io,
      required this.days,
      required this.changMoney,
      required this.currMoney,
      this.contents = ""});

  @override
  final InputOutput io;
  @override
  final String days;
  @override
  final String changMoney;
  @override
  final String currMoney;
  @override
  @JsonKey()
  final String contents;

  @override
  String toString() {
    return 'Bank(io: $io, days: $days, changMoney: $changMoney, currMoney: $currMoney, contents: $contents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankImpl &&
            (identical(other.io, io) || other.io == io) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.changMoney, changMoney) ||
                other.changMoney == changMoney) &&
            (identical(other.currMoney, currMoney) ||
                other.currMoney == currMoney) &&
            (identical(other.contents, contents) ||
                other.contents == contents));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, io, days, changMoney, currMoney, contents);

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankImplCopyWith<_$BankImpl> get copyWith =>
      __$$BankImplCopyWithImpl<_$BankImpl>(this, _$identity);
}

abstract class _Bank implements Bank {
  factory _Bank(
      {required final InputOutput io,
      required final String days,
      required final String changMoney,
      required final String currMoney,
      final String contents}) = _$BankImpl;

  @override
  InputOutput get io;
  @override
  String get days;
  @override
  String get changMoney;
  @override
  String get currMoney;
  @override
  String get contents;

  /// Create a copy of Bank
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankImplCopyWith<_$BankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
