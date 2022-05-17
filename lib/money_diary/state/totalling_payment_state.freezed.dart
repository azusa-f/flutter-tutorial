// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'totalling_payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TotallingPaymentStateTearOff {
  const _$TotallingPaymentStateTearOff();

  _TotallingPaymentState call(
      {required int month,
      bool isLoading = false,
      List<TotallingPayment> totallingPayments = const []}) {
    return _TotallingPaymentState(
      month: month,
      isLoading: isLoading,
      totallingPayments: totallingPayments,
    );
  }
}

/// @nodoc
const $TotallingPaymentState = _$TotallingPaymentStateTearOff();

/// @nodoc
mixin _$TotallingPaymentState {
  int get month => throw _privateConstructorUsedError;
  bool get isLoading =>
      throw _privateConstructorUsedError; // @Default(false) bool isReadyData,
  List<TotallingPayment> get totallingPayments =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TotallingPaymentStateCopyWith<TotallingPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotallingPaymentStateCopyWith<$Res> {
  factory $TotallingPaymentStateCopyWith(TotallingPaymentState value,
          $Res Function(TotallingPaymentState) then) =
      _$TotallingPaymentStateCopyWithImpl<$Res>;
  $Res call(
      {int month, bool isLoading, List<TotallingPayment> totallingPayments});
}

/// @nodoc
class _$TotallingPaymentStateCopyWithImpl<$Res>
    implements $TotallingPaymentStateCopyWith<$Res> {
  _$TotallingPaymentStateCopyWithImpl(this._value, this._then);

  final TotallingPaymentState _value;
  // ignore: unused_field
  final $Res Function(TotallingPaymentState) _then;

  @override
  $Res call({
    Object? month = freezed,
    Object? isLoading = freezed,
    Object? totallingPayments = freezed,
  }) {
    return _then(_value.copyWith(
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      totallingPayments: totallingPayments == freezed
          ? _value.totallingPayments
          : totallingPayments // ignore: cast_nullable_to_non_nullable
              as List<TotallingPayment>,
    ));
  }
}

/// @nodoc
abstract class _$TotallingPaymentStateCopyWith<$Res>
    implements $TotallingPaymentStateCopyWith<$Res> {
  factory _$TotallingPaymentStateCopyWith(_TotallingPaymentState value,
          $Res Function(_TotallingPaymentState) then) =
      __$TotallingPaymentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int month, bool isLoading, List<TotallingPayment> totallingPayments});
}

/// @nodoc
class __$TotallingPaymentStateCopyWithImpl<$Res>
    extends _$TotallingPaymentStateCopyWithImpl<$Res>
    implements _$TotallingPaymentStateCopyWith<$Res> {
  __$TotallingPaymentStateCopyWithImpl(_TotallingPaymentState _value,
      $Res Function(_TotallingPaymentState) _then)
      : super(_value, (v) => _then(v as _TotallingPaymentState));

  @override
  _TotallingPaymentState get _value => super._value as _TotallingPaymentState;

  @override
  $Res call({
    Object? month = freezed,
    Object? isLoading = freezed,
    Object? totallingPayments = freezed,
  }) {
    return _then(_TotallingPaymentState(
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      totallingPayments: totallingPayments == freezed
          ? _value.totallingPayments
          : totallingPayments // ignore: cast_nullable_to_non_nullable
              as List<TotallingPayment>,
    ));
  }
}

/// @nodoc

class _$_TotallingPaymentState implements _TotallingPaymentState {
  const _$_TotallingPaymentState(
      {required this.month,
      this.isLoading = false,
      this.totallingPayments = const []});

  @override
  final int month;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override // @Default(false) bool isReadyData,
  final List<TotallingPayment> totallingPayments;

  @override
  String toString() {
    return 'TotallingPaymentState(month: $month, isLoading: $isLoading, totallingPayments: $totallingPayments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TotallingPaymentState &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.totallingPayments, totallingPayments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(totallingPayments));

  @JsonKey(ignore: true)
  @override
  _$TotallingPaymentStateCopyWith<_TotallingPaymentState> get copyWith =>
      __$TotallingPaymentStateCopyWithImpl<_TotallingPaymentState>(
          this, _$identity);
}

abstract class _TotallingPaymentState implements TotallingPaymentState {
  const factory _TotallingPaymentState(
      {required int month,
      bool isLoading,
      List<TotallingPayment> totallingPayments}) = _$_TotallingPaymentState;

  @override
  int get month;
  @override
  bool get isLoading;
  @override // @Default(false) bool isReadyData,
  List<TotallingPayment> get totallingPayments;
  @override
  @JsonKey(ignore: true)
  _$TotallingPaymentStateCopyWith<_TotallingPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
