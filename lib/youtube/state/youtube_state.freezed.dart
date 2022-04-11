// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'youtube_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$YoutubeStateTearOff {
  const _$YoutubeStateTearOff();

  _YoutubeState call(
      {bool isLoading = false,
      bool isReadyDate = false,
      List<YoutubeItem> youtubeItems = const <YoutubeItem>[],
      String currentTag = ''}) {
    return _YoutubeState(
      isLoading: isLoading,
      isReadyDate: isReadyDate,
      youtubeItems: youtubeItems,
      currentTag: currentTag,
    );
  }
}

/// @nodoc
const $YoutubeState = _$YoutubeStateTearOff();

/// @nodoc
mixin _$YoutubeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isReadyDate => throw _privateConstructorUsedError;
  List<YoutubeItem> get youtubeItems => throw _privateConstructorUsedError;
  String get currentTag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoutubeStateCopyWith<YoutubeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeStateCopyWith<$Res> {
  factory $YoutubeStateCopyWith(
          YoutubeState value, $Res Function(YoutubeState) then) =
      _$YoutubeStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isReadyDate,
      List<YoutubeItem> youtubeItems,
      String currentTag});
}

/// @nodoc
class _$YoutubeStateCopyWithImpl<$Res> implements $YoutubeStateCopyWith<$Res> {
  _$YoutubeStateCopyWithImpl(this._value, this._then);

  final YoutubeState _value;
  // ignore: unused_field
  final $Res Function(YoutubeState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isReadyDate = freezed,
    Object? youtubeItems = freezed,
    Object? currentTag = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyDate: isReadyDate == freezed
          ? _value.isReadyDate
          : isReadyDate // ignore: cast_nullable_to_non_nullable
              as bool,
      youtubeItems: youtubeItems == freezed
          ? _value.youtubeItems
          : youtubeItems // ignore: cast_nullable_to_non_nullable
              as List<YoutubeItem>,
      currentTag: currentTag == freezed
          ? _value.currentTag
          : currentTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$YoutubeStateCopyWith<$Res>
    implements $YoutubeStateCopyWith<$Res> {
  factory _$YoutubeStateCopyWith(
          _YoutubeState value, $Res Function(_YoutubeState) then) =
      __$YoutubeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isReadyDate,
      List<YoutubeItem> youtubeItems,
      String currentTag});
}

/// @nodoc
class __$YoutubeStateCopyWithImpl<$Res> extends _$YoutubeStateCopyWithImpl<$Res>
    implements _$YoutubeStateCopyWith<$Res> {
  __$YoutubeStateCopyWithImpl(
      _YoutubeState _value, $Res Function(_YoutubeState) _then)
      : super(_value, (v) => _then(v as _YoutubeState));

  @override
  _YoutubeState get _value => super._value as _YoutubeState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isReadyDate = freezed,
    Object? youtubeItems = freezed,
    Object? currentTag = freezed,
  }) {
    return _then(_YoutubeState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyDate: isReadyDate == freezed
          ? _value.isReadyDate
          : isReadyDate // ignore: cast_nullable_to_non_nullable
              as bool,
      youtubeItems: youtubeItems == freezed
          ? _value.youtubeItems
          : youtubeItems // ignore: cast_nullable_to_non_nullable
              as List<YoutubeItem>,
      currentTag: currentTag == freezed
          ? _value.currentTag
          : currentTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_YoutubeState implements _YoutubeState {
  const _$_YoutubeState(
      {this.isLoading = false,
      this.isReadyDate = false,
      this.youtubeItems = const <YoutubeItem>[],
      this.currentTag = ''});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isReadyDate;
  @JsonKey()
  @override
  final List<YoutubeItem> youtubeItems;
  @JsonKey()
  @override
  final String currentTag;

  @override
  String toString() {
    return 'YoutubeState(isLoading: $isLoading, isReadyDate: $isReadyDate, youtubeItems: $youtubeItems, currentTag: $currentTag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _YoutubeState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isReadyDate, isReadyDate) &&
            const DeepCollectionEquality()
                .equals(other.youtubeItems, youtubeItems) &&
            const DeepCollectionEquality()
                .equals(other.currentTag, currentTag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isReadyDate),
      const DeepCollectionEquality().hash(youtubeItems),
      const DeepCollectionEquality().hash(currentTag));

  @JsonKey(ignore: true)
  @override
  _$YoutubeStateCopyWith<_YoutubeState> get copyWith =>
      __$YoutubeStateCopyWithImpl<_YoutubeState>(this, _$identity);
}

abstract class _YoutubeState implements YoutubeState {
  const factory _YoutubeState(
      {bool isLoading,
      bool isReadyDate,
      List<YoutubeItem> youtubeItems,
      String currentTag}) = _$_YoutubeState;

  @override
  bool get isLoading;
  @override
  bool get isReadyDate;
  @override
  List<YoutubeItem> get youtubeItems;
  @override
  String get currentTag;
  @override
  @JsonKey(ignore: true)
  _$YoutubeStateCopyWith<_YoutubeState> get copyWith =>
      throw _privateConstructorUsedError;
}
