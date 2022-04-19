// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'youtube_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods',
);

YoutubeItem _$YoutubeItemFromJson(Map<String, dynamic> json) {
  return _YoutubeItem.fromJson(json);
}

/// @nodoc
class _$YoutubeItemTearOff {
  const _$YoutubeItemTearOff();

  _YoutubeItem call({
    @JsonKey(name: 'imagePath') String? imagePath,
    @JsonKey(name: 'iconPath') String? iconPath,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'subTitle') String? subTitle,
  }) {
    return _YoutubeItem(
      imagePath: imagePath,
      iconPath: iconPath,
      title: title,
      subTitle: subTitle,
    );
  }

  YoutubeItem fromJson(Map<String, Object?> json) {
    return YoutubeItem.fromJson(json);
  }
}

/// @nodoc
const $YoutubeItem = _$YoutubeItemTearOff();

/// @nodoc
mixin _$YoutubeItem {
  @JsonKey(name: 'imagePath')
  String? get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'iconPath')
  String? get iconPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'subTitle')
  String? get subTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeItemCopyWith<YoutubeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeItemCopyWith<$Res> {
  factory $YoutubeItemCopyWith(
    YoutubeItem value,
    $Res Function(YoutubeItem) then,
  ) = _$YoutubeItemCopyWithImpl<$Res>;
  $Res call({
    @JsonKey(name: 'imagePath') String? imagePath,
    @JsonKey(name: 'iconPath') String? iconPath,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'subTitle') String? subTitle,
  });
}

/// @nodoc
class _$YoutubeItemCopyWithImpl<$Res> implements $YoutubeItemCopyWith<$Res> {
  _$YoutubeItemCopyWithImpl(this._value, this._then);

  final YoutubeItem _value;
  // ignore: unused_field
  final $Res Function(YoutubeItem) _then;

  @override
  $Res call({
    Object? imagePath = freezed,
    Object? iconPath = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
  }) {
    return _then(
      _value.copyWith(
        imagePath: imagePath == freezed
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                as String?,
        iconPath: iconPath == freezed
            ? _value.iconPath
            : iconPath // ignore: cast_nullable_to_non_nullable
                as String?,
        title: title == freezed
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                as String?,
        subTitle: subTitle == freezed
            ? _value.subTitle
            : subTitle // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc
abstract class _$YoutubeItemCopyWith<$Res>
    implements $YoutubeItemCopyWith<$Res> {
  factory _$YoutubeItemCopyWith(
    _YoutubeItem value,
    $Res Function(_YoutubeItem) then,
  ) = __$YoutubeItemCopyWithImpl<$Res>;
  @override
  $Res call({
    @JsonKey(name: 'imagePath') String? imagePath,
    @JsonKey(name: 'iconPath') String? iconPath,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'subTitle') String? subTitle,
  });
}

/// @nodoc
class __$YoutubeItemCopyWithImpl<$Res> extends _$YoutubeItemCopyWithImpl<$Res>
    implements _$YoutubeItemCopyWith<$Res> {
  __$YoutubeItemCopyWithImpl(
    _YoutubeItem value,
    $Res Function(_YoutubeItem) then,
  ) : super(value, (v) => then(v as _YoutubeItem));

  @override
  _YoutubeItem get _value => super._value as _YoutubeItem;

  @override
  $Res call({
    Object? imagePath = freezed,
    Object? iconPath = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
  }) {
    return _then(
      _YoutubeItem(
        imagePath: imagePath == freezed
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                as String?,
        iconPath: iconPath == freezed
            ? _value.iconPath
            : iconPath // ignore: cast_nullable_to_non_nullable
                as String?,
        title: title == freezed
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                as String?,
        subTitle: subTitle == freezed
            ? _value.subTitle
            : subTitle // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeItem implements _YoutubeItem {
  const _$_YoutubeItem({
    @JsonKey(name: 'imagePath') this.imagePath,
    @JsonKey(name: 'iconPath') this.iconPath,
    @JsonKey(name: 'title') this.title,
    @JsonKey(name: 'subTitle') this.subTitle,
  });

  factory _$_YoutubeItem.fromJson(Map<String, dynamic> json) =>
      _$$_YoutubeItemFromJson(json);

  @override
  @JsonKey(name: 'imagePath')
  final String? imagePath;
  @override
  @JsonKey(name: 'iconPath')
  final String? iconPath;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'subTitle')
  final String? subTitle;

  @override
  String toString() {
    return 'YoutubeItem(imagePath: $imagePath, iconPath: $iconPath, title: $title, subTitle: $subTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _YoutubeItem &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath) &&
            const DeepCollectionEquality().equals(other.iconPath, iconPath) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subTitle, subTitle));
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(imagePath),
        const DeepCollectionEquality().hash(iconPath),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(subTitle),
      );

  @JsonKey(ignore: true)
  @override
  _$YoutubeItemCopyWith<_YoutubeItem> get copyWith =>
      __$YoutubeItemCopyWithImpl<_YoutubeItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeItemToJson(this);
  }
}

abstract class _YoutubeItem implements YoutubeItem {
  const factory _YoutubeItem({
    @JsonKey(name: 'imagePath') String? imagePath,
    @JsonKey(name: 'iconPath') String? iconPath,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'subTitle') String? subTitle,
  }) = _$_YoutubeItem;

  factory _YoutubeItem.fromJson(Map<String, dynamic> json) =
      _$_YoutubeItem.fromJson;

  @override
  @JsonKey(name: 'imagePath')
  String? get imagePath;
  @override
  @JsonKey(name: 'iconPath')
  String? get iconPath;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'subTitle')
  String? get subTitle;
  @override
  @JsonKey(ignore: true)
  _$YoutubeItemCopyWith<_YoutubeItem> get copyWith =>
      throw _privateConstructorUsedError;
}
