// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dropdown_button_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DropdownButtonPageStateTearOff {
  const _$DropdownButtonPageStateTearOff();

  _DropdownButtonPageState call({String? selectedCategory}) {
    return _DropdownButtonPageState(
      selectedCategory: selectedCategory,
    );
  }
}

/// @nodoc
const $DropdownButtonPageState = _$DropdownButtonPageStateTearOff();

/// @nodoc
mixin _$DropdownButtonPageState {
  String? get selectedCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DropdownButtonPageStateCopyWith<DropdownButtonPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownButtonPageStateCopyWith<$Res> {
  factory $DropdownButtonPageStateCopyWith(DropdownButtonPageState value,
          $Res Function(DropdownButtonPageState) then) =
      _$DropdownButtonPageStateCopyWithImpl<$Res>;
  $Res call({String? selectedCategory});
}

/// @nodoc
class _$DropdownButtonPageStateCopyWithImpl<$Res>
    implements $DropdownButtonPageStateCopyWith<$Res> {
  _$DropdownButtonPageStateCopyWithImpl(this._value, this._then);

  final DropdownButtonPageState _value;
  // ignore: unused_field
  final $Res Function(DropdownButtonPageState) _then;

  @override
  $Res call({
    Object? selectedCategory = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DropdownButtonPageStateCopyWith<$Res>
    implements $DropdownButtonPageStateCopyWith<$Res> {
  factory _$DropdownButtonPageStateCopyWith(_DropdownButtonPageState value,
          $Res Function(_DropdownButtonPageState) then) =
      __$DropdownButtonPageStateCopyWithImpl<$Res>;
  @override
  $Res call({String? selectedCategory});
}

/// @nodoc
class __$DropdownButtonPageStateCopyWithImpl<$Res>
    extends _$DropdownButtonPageStateCopyWithImpl<$Res>
    implements _$DropdownButtonPageStateCopyWith<$Res> {
  __$DropdownButtonPageStateCopyWithImpl(_DropdownButtonPageState _value,
      $Res Function(_DropdownButtonPageState) _then)
      : super(_value, (v) => _then(v as _DropdownButtonPageState));

  @override
  _DropdownButtonPageState get _value =>
      super._value as _DropdownButtonPageState;

  @override
  $Res call({
    Object? selectedCategory = freezed,
  }) {
    return _then(_DropdownButtonPageState(
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DropdownButtonPageState implements _DropdownButtonPageState {
  const _$_DropdownButtonPageState({this.selectedCategory});

  @override
  final String? selectedCategory;

  @override
  String toString() {
    return 'DropdownButtonPageState(selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DropdownButtonPageState &&
            const DeepCollectionEquality()
                .equals(other.selectedCategory, selectedCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedCategory));

  @JsonKey(ignore: true)
  @override
  _$DropdownButtonPageStateCopyWith<_DropdownButtonPageState> get copyWith =>
      __$DropdownButtonPageStateCopyWithImpl<_DropdownButtonPageState>(
          this, _$identity);
}

abstract class _DropdownButtonPageState implements DropdownButtonPageState {
  const factory _DropdownButtonPageState({String? selectedCategory}) =
      _$_DropdownButtonPageState;

  @override
  String? get selectedCategory;
  @override
  @JsonKey(ignore: true)
  _$DropdownButtonPageStateCopyWith<_DropdownButtonPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
