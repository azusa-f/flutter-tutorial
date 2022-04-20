// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_client_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoClientStateTearOff {
  const _$TodoClientStateTearOff();

  _TodoClientState call(
      {bool isLoading = false,
      bool isReadyData = false,
      List<Todo> todoItems = const []}) {
    return _TodoClientState(
      isLoading: isLoading,
      isReadyData: isReadyData,
      todoItems: todoItems,
    );
  }
}

/// @nodoc
const $TodoClientState = _$TodoClientStateTearOff();

/// @nodoc
mixin _$TodoClientState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isReadyData => throw _privateConstructorUsedError;
  List<Todo> get todoItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoClientStateCopyWith<TodoClientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoClientStateCopyWith<$Res> {
  factory $TodoClientStateCopyWith(
          TodoClientState value, $Res Function(TodoClientState) then) =
      _$TodoClientStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isReadyData, List<Todo> todoItems});
}

/// @nodoc
class _$TodoClientStateCopyWithImpl<$Res>
    implements $TodoClientStateCopyWith<$Res> {
  _$TodoClientStateCopyWithImpl(this._value, this._then);

  final TodoClientState _value;
  // ignore: unused_field
  final $Res Function(TodoClientState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isReadyData = freezed,
    Object? todoItems = freezed,
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
      todoItems: todoItems == freezed
          ? _value.todoItems
          : todoItems // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
abstract class _$TodoClientStateCopyWith<$Res>
    implements $TodoClientStateCopyWith<$Res> {
  factory _$TodoClientStateCopyWith(
          _TodoClientState value, $Res Function(_TodoClientState) then) =
      __$TodoClientStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isReadyData, List<Todo> todoItems});
}

/// @nodoc
class __$TodoClientStateCopyWithImpl<$Res>
    extends _$TodoClientStateCopyWithImpl<$Res>
    implements _$TodoClientStateCopyWith<$Res> {
  __$TodoClientStateCopyWithImpl(
      _TodoClientState _value, $Res Function(_TodoClientState) _then)
      : super(_value, (v) => _then(v as _TodoClientState));

  @override
  _TodoClientState get _value => super._value as _TodoClientState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isReadyData = freezed,
    Object? todoItems = freezed,
  }) {
    return _then(_TodoClientState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyData: isReadyData == freezed
          ? _value.isReadyData
          : isReadyData // ignore: cast_nullable_to_non_nullable
              as bool,
      todoItems: todoItems == freezed
          ? _value.todoItems
          : todoItems // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_TodoClientState implements _TodoClientState {
  const _$_TodoClientState(
      {this.isLoading = false,
      this.isReadyData = false,
      this.todoItems = const []});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isReadyData;
  @JsonKey()
  @override
  final List<Todo> todoItems;

  @override
  String toString() {
    return 'TodoClientState(isLoading: $isLoading, isReadyData: $isReadyData, todoItems: $todoItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoClientState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isReadyData, isReadyData) &&
            const DeepCollectionEquality().equals(other.todoItems, todoItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isReadyData),
      const DeepCollectionEquality().hash(todoItems));

  @JsonKey(ignore: true)
  @override
  _$TodoClientStateCopyWith<_TodoClientState> get copyWith =>
      __$TodoClientStateCopyWithImpl<_TodoClientState>(this, _$identity);
}

abstract class _TodoClientState implements TodoClientState {
  const factory _TodoClientState(
      {bool isLoading,
      bool isReadyData,
      List<Todo> todoItems}) = _$_TodoClientState;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<Todo> get todoItems;
  @override
  @JsonKey(ignore: true)
  _$TodoClientStateCopyWith<_TodoClientState> get copyWith =>
      throw _privateConstructorUsedError;
}
