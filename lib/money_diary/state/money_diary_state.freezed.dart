// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'money_diary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MoneyDiaryStateTearOff {
  const _$MoneyDiaryStateTearOff();

  _MoneyDiaryState call(
      {bool isLoading = false,
      bool isReadyData = false,
      List<Payment> payments = const []}) {
    return _MoneyDiaryState(
      isLoading: isLoading,
      isReadyData: isReadyData,
      payments: payments,
    );
  }
}

/// @nodoc
const $MoneyDiaryState = _$MoneyDiaryStateTearOff();

/// @nodoc
mixin _$MoneyDiaryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isReadyData => throw _privateConstructorUsedError;
  List<Payment> get payments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoneyDiaryStateCopyWith<MoneyDiaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyDiaryStateCopyWith<$Res> {
  factory $MoneyDiaryStateCopyWith(
          MoneyDiaryState value, $Res Function(MoneyDiaryState) then) =
      _$MoneyDiaryStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isReadyData, List<Payment> payments});
}

/// @nodoc
class _$MoneyDiaryStateCopyWithImpl<$Res>
    implements $MoneyDiaryStateCopyWith<$Res> {
  _$MoneyDiaryStateCopyWithImpl(this._value, this._then);

  final MoneyDiaryState _value;
  // ignore: unused_field
  final $Res Function(MoneyDiaryState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isReadyData = freezed,
    Object? payments = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyData: isReadyData == freezed
          ? _value.isReadyData
          : isReadyData // ignore: cast_nullable_to_non_nullable
              as bool,
      payments: payments == freezed
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
    ));
  }
}

/// @nodoc
abstract class _$MoneyDiaryStateCopyWith<$Res>
    implements $MoneyDiaryStateCopyWith<$Res> {
  factory _$MoneyDiaryStateCopyWith(
          _MoneyDiaryState value, $Res Function(_MoneyDiaryState) then) =
      __$MoneyDiaryStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isReadyData, List<Payment> payments});
}

/// @nodoc
class __$MoneyDiaryStateCopyWithImpl<$Res>
    extends _$MoneyDiaryStateCopyWithImpl<$Res>
    implements _$MoneyDiaryStateCopyWith<$Res> {
  __$MoneyDiaryStateCopyWithImpl(
      _MoneyDiaryState _value, $Res Function(_MoneyDiaryState) _then)
      : super(_value, (v) => _then(v as _MoneyDiaryState));

  @override
  _MoneyDiaryState get _value => super._value as _MoneyDiaryState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isReadyData = freezed,
    Object? payments = freezed,
  }) {
    return _then(_MoneyDiaryState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyData: isReadyData == freezed
          ? _value.isReadyData
          : isReadyData // ignore: cast_nullable_to_non_nullable
              as bool,
      payments: payments == freezed
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
    ));
  }
}

/// @nodoc

class _$_MoneyDiaryState implements _MoneyDiaryState {
  const _$_MoneyDiaryState(
      {this.isLoading = false,
      this.isReadyData = false,
      this.payments = const []});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isReadyData;
  @JsonKey()
  @override
  final List<Payment> payments;

  @override
  String toString() {
    return 'MoneyDiaryState(isLoading: $isLoading, isReadyData: $isReadyData, payments: $payments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoneyDiaryState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isReadyData, isReadyData) &&
            const DeepCollectionEquality().equals(other.payments, payments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isReadyData),
      const DeepCollectionEquality().hash(payments));

  @JsonKey(ignore: true)
  @override
  _$MoneyDiaryStateCopyWith<_MoneyDiaryState> get copyWith =>
      __$MoneyDiaryStateCopyWithImpl<_MoneyDiaryState>(this, _$identity);
}

abstract class _MoneyDiaryState implements MoneyDiaryState {
  const factory _MoneyDiaryState(
      {bool isLoading,
      bool isReadyData,
      List<Payment> payments}) = _$_MoneyDiaryState;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<Payment> get payments;
  @override
  @JsonKey(ignore: true)
  _$MoneyDiaryStateCopyWith<_MoneyDiaryState> get copyWith =>
      throw _privateConstructorUsedError;
}
