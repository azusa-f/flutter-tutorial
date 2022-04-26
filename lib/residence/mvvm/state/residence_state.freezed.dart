// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'residence_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods',
);

/// @nodoc
class _$ResidenceStateTearOff {
  const _$ResidenceStateTearOff();

  _ResidenceState call({
    bool isLoading = false,
    List<ResidenceItem> residenceItems = const <ResidenceItem>[],
  }) {
    return _ResidenceState(
      isLoading: isLoading,
      residenceItems: residenceItems,
    );
  }
}

/// @nodoc
const $ResidenceState = _$ResidenceStateTearOff();

/// @nodoc
mixin _$ResidenceState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ResidenceItem> get residenceItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResidenceStateCopyWith<ResidenceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResidenceStateCopyWith<$Res> {
  factory $ResidenceStateCopyWith(
    ResidenceState value,
    $Res Function(ResidenceState) then,
  ) = _$ResidenceStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<ResidenceItem> residenceItems});
}

/// @nodoc
class _$ResidenceStateCopyWithImpl<$Res>
    implements $ResidenceStateCopyWith<$Res> {
  _$ResidenceStateCopyWithImpl(this._value, this._then);

  final ResidenceState _value;
  // ignore: unused_field
  final $Res Function(ResidenceState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? residenceItems = freezed,
  }) {
    return _then(
      _value.copyWith(
        isLoading: isLoading == freezed
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                as bool,
        residenceItems: residenceItems == freezed
            ? _value.residenceItems
            : residenceItems // ignore: cast_nullable_to_non_nullable
                as List<ResidenceItem>,
      ),
    );
  }
}

/// @nodoc
abstract class _$ResidenceStateCopyWith<$Res>
    implements $ResidenceStateCopyWith<$Res> {
  factory _$ResidenceStateCopyWith(
    _ResidenceState value,
    $Res Function(_ResidenceState) then,
  ) = __$ResidenceStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<ResidenceItem> residenceItems});
}

/// @nodoc
class __$ResidenceStateCopyWithImpl<$Res>
    extends _$ResidenceStateCopyWithImpl<$Res>
    implements _$ResidenceStateCopyWith<$Res> {
  __$ResidenceStateCopyWithImpl(
    _ResidenceState value,
    $Res Function(_ResidenceState) then,
  ) : super(value, (v) => then(v as _ResidenceState));

  @override
  _ResidenceState get _value => super._value as _ResidenceState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? residenceItems = freezed,
  }) {
    return _then(
      _ResidenceState(
        isLoading: isLoading == freezed
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                as bool,
        residenceItems: residenceItems == freezed
            ? _value.residenceItems
            : residenceItems // ignore: cast_nullable_to_non_nullable
                as List<ResidenceItem>,
      ),
    );
  }
}

/// @nodoc

class _$_ResidenceState implements _ResidenceState {
  const _$_ResidenceState({
    this.isLoading = false,
    this.residenceItems = const <ResidenceItem>[],
  });

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<ResidenceItem> residenceItems;

  @override
  String toString() {
    return 'ResidenceState(isLoading: $isLoading, residenceItems: $residenceItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResidenceState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.residenceItems, residenceItems));
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(isLoading),
        const DeepCollectionEquality().hash(residenceItems),
      );

  @JsonKey(ignore: true)
  @override
  _$ResidenceStateCopyWith<_ResidenceState> get copyWith =>
      __$ResidenceStateCopyWithImpl<_ResidenceState>(this, _$identity);
}

abstract class _ResidenceState implements ResidenceState {
  const factory _ResidenceState({
    bool isLoading,
    List<ResidenceItem> residenceItems,
  }) = _$_ResidenceState;

  @override
  bool get isLoading;
  @override
  List<ResidenceItem> get residenceItems;
  @override
  @JsonKey(ignore: true)
  _$ResidenceStateCopyWith<_ResidenceState> get copyWith =>
      throw _privateConstructorUsedError;
}
