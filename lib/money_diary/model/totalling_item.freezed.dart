// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'totalling_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TotallingPayment _$TotallingPaymentFromJson(Map<String, dynamic> json) {
  return _TotallingPayment.fromJson(json);
}

/// @nodoc
class _$TotallingPaymentTearOff {
  const _$TotallingPaymentTearOff();

  _TotallingPayment call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'usedDate') DateTime? usedDate,
      @JsonKey(name: 'category') int? category}) {
    return _TotallingPayment(
      id: id,
      amount: amount,
      usedDate: usedDate,
      category: category,
    );
  }

  TotallingPayment fromJson(Map<String, Object?> json) {
    return TotallingPayment.fromJson(json);
  }
}

/// @nodoc
const $TotallingPayment = _$TotallingPaymentTearOff();

/// @nodoc
mixin _$TotallingPayment {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'usedDate')
  DateTime? get usedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  int? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotallingPaymentCopyWith<TotallingPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotallingPaymentCopyWith<$Res> {
  factory $TotallingPaymentCopyWith(
          TotallingPayment value, $Res Function(TotallingPayment) then) =
      _$TotallingPaymentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'usedDate') DateTime? usedDate,
      @JsonKey(name: 'category') int? category});
}

/// @nodoc
class _$TotallingPaymentCopyWithImpl<$Res>
    implements $TotallingPaymentCopyWith<$Res> {
  _$TotallingPaymentCopyWithImpl(this._value, this._then);

  final TotallingPayment _value;
  // ignore: unused_field
  final $Res Function(TotallingPayment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? usedDate = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      usedDate: usedDate == freezed
          ? _value.usedDate
          : usedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TotallingPaymentCopyWith<$Res>
    implements $TotallingPaymentCopyWith<$Res> {
  factory _$TotallingPaymentCopyWith(
          _TotallingPayment value, $Res Function(_TotallingPayment) then) =
      __$TotallingPaymentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'usedDate') DateTime? usedDate,
      @JsonKey(name: 'category') int? category});
}

/// @nodoc
class __$TotallingPaymentCopyWithImpl<$Res>
    extends _$TotallingPaymentCopyWithImpl<$Res>
    implements _$TotallingPaymentCopyWith<$Res> {
  __$TotallingPaymentCopyWithImpl(
      _TotallingPayment _value, $Res Function(_TotallingPayment) _then)
      : super(_value, (v) => _then(v as _TotallingPayment));

  @override
  _TotallingPayment get _value => super._value as _TotallingPayment;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? usedDate = freezed,
    Object? category = freezed,
  }) {
    return _then(_TotallingPayment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      usedDate: usedDate == freezed
          ? _value.usedDate
          : usedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TotallingPayment implements _TotallingPayment {
  const _$_TotallingPayment(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'usedDate') this.usedDate,
      @JsonKey(name: 'category') this.category});

  factory _$_TotallingPayment.fromJson(Map<String, dynamic> json) =>
      _$$_TotallingPaymentFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'amount')
  final int? amount;
  @override
  @JsonKey(name: 'usedDate')
  final DateTime? usedDate;
  @override
  @JsonKey(name: 'category')
  final int? category;

  @override
  String toString() {
    return 'TotallingPayment(id: $id, amount: $amount, usedDate: $usedDate, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TotallingPayment &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.usedDate, usedDate) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(usedDate),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$TotallingPaymentCopyWith<_TotallingPayment> get copyWith =>
      __$TotallingPaymentCopyWithImpl<_TotallingPayment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TotallingPaymentToJson(this);
  }
}

abstract class _TotallingPayment implements TotallingPayment {
  const factory _TotallingPayment(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'usedDate') DateTime? usedDate,
      @JsonKey(name: 'category') int? category}) = _$_TotallingPayment;

  factory _TotallingPayment.fromJson(Map<String, dynamic> json) =
      _$_TotallingPayment.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'amount')
  int? get amount;
  @override
  @JsonKey(name: 'usedDate')
  DateTime? get usedDate;
  @override
  @JsonKey(name: 'category')
  int? get category;
  @override
  @JsonKey(ignore: true)
  _$TotallingPaymentCopyWith<_TotallingPayment> get copyWith =>
      throw _privateConstructorUsedError;
}
