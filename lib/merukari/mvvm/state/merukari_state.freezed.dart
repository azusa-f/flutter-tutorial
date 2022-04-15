// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'merukari_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MerukariStateTearOff {
  const _$MerukariStateTearOff();

  _MerukariState call(
      {bool isLoading = false,
      List<MerukariItem> merukariItems = const <MerukariItem>[]}) {
    return _MerukariState(
      isLoading: isLoading,
      merukariItems: merukariItems,
    );
  }
}

/// @nodoc
const $MerukariState = _$MerukariStateTearOff();

/// @nodoc
mixin _$MerukariState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<MerukariItem> get merukariItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MerukariStateCopyWith<MerukariState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerukariStateCopyWith<$Res> {
  factory $MerukariStateCopyWith(
          MerukariState value, $Res Function(MerukariState) then) =
      _$MerukariStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<MerukariItem> merukariItems});
}

/// @nodoc
class _$MerukariStateCopyWithImpl<$Res>
    implements $MerukariStateCopyWith<$Res> {
  _$MerukariStateCopyWithImpl(this._value, this._then);

  final MerukariState _value;
  // ignore: unused_field
  final $Res Function(MerukariState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? merukariItems = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      merukariItems: merukariItems == freezed
          ? _value.merukariItems
          : merukariItems // ignore: cast_nullable_to_non_nullable
              as List<MerukariItem>,
    ));
  }
}

/// @nodoc
abstract class _$MerukariStateCopyWith<$Res>
    implements $MerukariStateCopyWith<$Res> {
  factory _$MerukariStateCopyWith(
          _MerukariState value, $Res Function(_MerukariState) then) =
      __$MerukariStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<MerukariItem> merukariItems});
}

/// @nodoc
class __$MerukariStateCopyWithImpl<$Res>
    extends _$MerukariStateCopyWithImpl<$Res>
    implements _$MerukariStateCopyWith<$Res> {
  __$MerukariStateCopyWithImpl(
      _MerukariState _value, $Res Function(_MerukariState) _then)
      : super(_value, (v) => _then(v as _MerukariState));

  @override
  _MerukariState get _value => super._value as _MerukariState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? merukariItems = freezed,
  }) {
    return _then(_MerukariState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      merukariItems: merukariItems == freezed
          ? _value.merukariItems
          : merukariItems // ignore: cast_nullable_to_non_nullable
              as List<MerukariItem>,
    ));
  }
}

/// @nodoc

class _$_MerukariState implements _MerukariState {
  const _$_MerukariState(
      {this.isLoading = false, this.merukariItems = const <MerukariItem>[]});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<MerukariItem> merukariItems;

  @override
  String toString() {
    return 'MerukariState(isLoading: $isLoading, merukariItems: $merukariItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MerukariState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.merukariItems, merukariItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(merukariItems));

  @JsonKey(ignore: true)
  @override
  _$MerukariStateCopyWith<_MerukariState> get copyWith =>
      __$MerukariStateCopyWithImpl<_MerukariState>(this, _$identity);
}

abstract class _MerukariState implements MerukariState {
  const factory _MerukariState(
      {bool isLoading, List<MerukariItem> merukariItems}) = _$_MerukariState;

  @override
  bool get isLoading;
  @override
  List<MerukariItem> get merukariItems;
  @override
  @JsonKey(ignore: true)
  _$MerukariStateCopyWith<_MerukariState> get copyWith =>
      throw _privateConstructorUsedError;
}
