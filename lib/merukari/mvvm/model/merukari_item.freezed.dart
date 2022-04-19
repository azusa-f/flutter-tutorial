// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, require_trailing_commas

part of 'merukari_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods',
);

MerukariItem _$MerukariItemFromJson(Map<String, dynamic> json) {
  return _MerukariItem.fromJson(json);
}

/// @nodoc
class _$MerukariItemTearOff {
  const _$MerukariItemTearOff();

  _MerukariItem call(
      {@JsonKey(name: 'imagePath') String? imagePath,
      @JsonKey(name: 'articleName') String? articleName,
      @JsonKey(name: 'articlePrice') String? articlePrice,
      @JsonKey(name: 'articleInformation') String? articleInformation}) {
    return _MerukariItem(
      imagePath: imagePath,
      articleName: articleName,
      articlePrice: articlePrice,
      articleInformation: articleInformation,
    );
  }

  MerukariItem fromJson(Map<String, Object?> json) {
    return MerukariItem.fromJson(json);
  }
}

/// @nodoc
const $MerukariItem = _$MerukariItemTearOff();

/// @nodoc
mixin _$MerukariItem {
  @JsonKey(name: 'imagePath')
  String? get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'articleName')
  String? get articleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'articlePrice')
  String? get articlePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'articleInformation')
  String? get articleInformation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerukariItemCopyWith<MerukariItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerukariItemCopyWith<$Res> {
  factory $MerukariItemCopyWith(
          MerukariItem value, $Res Function(MerukariItem) then) =
      _$MerukariItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'imagePath') String? imagePath,
      @JsonKey(name: 'articleName') String? articleName,
      @JsonKey(name: 'articlePrice') String? articlePrice,
      @JsonKey(name: 'articleInformation') String? articleInformation});
}

/// @nodoc
class _$MerukariItemCopyWithImpl<$Res> implements $MerukariItemCopyWith<$Res> {
  _$MerukariItemCopyWithImpl(this._value, this._then);

  final MerukariItem _value;
  // ignore: unused_field
  final $Res Function(MerukariItem) _then;

  @override
  $Res call({
    Object? imagePath = freezed,
    Object? articleName = freezed,
    Object? articlePrice = freezed,
    Object? articleInformation = freezed,
  }) {
    return _then(
      _value.copyWith(
        imagePath: imagePath == freezed
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                as String?,
        articleName: articleName == freezed
            ? _value.articleName
            : articleName // ignore: cast_nullable_to_non_nullable
                as String?,
        articlePrice: articlePrice == freezed
            ? _value.articlePrice
            : articlePrice // ignore: cast_nullable_to_non_nullable
                as String?,
        articleInformation: articleInformation == freezed
            ? _value.articleInformation
            : articleInformation // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc
abstract class _$MerukariItemCopyWith<$Res>
    implements $MerukariItemCopyWith<$Res> {
  factory _$MerukariItemCopyWith(
          _MerukariItem value, $Res Function(_MerukariItem) then) =
      __$MerukariItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'imagePath') String? imagePath,
      @JsonKey(name: 'articleName') String? articleName,
      @JsonKey(name: 'articlePrice') String? articlePrice,
      @JsonKey(name: 'articleInformation') String? articleInformation});
}

/// @nodoc
class __$MerukariItemCopyWithImpl<$Res> extends _$MerukariItemCopyWithImpl<$Res>
    implements _$MerukariItemCopyWith<$Res> {
  __$MerukariItemCopyWithImpl(
      _MerukariItem value, $Res Function(_MerukariItem) then)
      : super(value, (v) => then(v as _MerukariItem));

  @override
  _MerukariItem get _value => super._value as _MerukariItem;

  @override
  $Res call({
    Object? imagePath = freezed,
    Object? articleName = freezed,
    Object? articlePrice = freezed,
    Object? articleInformation = freezed,
  }) {
    return _then(
      _MerukariItem(
        imagePath: imagePath == freezed
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                as String?,
        articleName: articleName == freezed
            ? _value.articleName
            : articleName // ignore: cast_nullable_to_non_nullable
                as String?,
        articlePrice: articlePrice == freezed
            ? _value.articlePrice
            : articlePrice // ignore: cast_nullable_to_non_nullable
                as String?,
        articleInformation: articleInformation == freezed
            ? _value.articleInformation
            : articleInformation // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$_MerukariItem with DiagnosticableTreeMixin implements _MerukariItem {
  const _$_MerukariItem(
      {@JsonKey(name: 'imagePath') this.imagePath,
      @JsonKey(name: 'articleName') this.articleName,
      @JsonKey(name: 'articlePrice') this.articlePrice,
      @JsonKey(name: 'articleInformation') this.articleInformation});

  factory _$_MerukariItem.fromJson(Map<String, dynamic> json) =>
      _$$_MerukariItemFromJson(json);

  @override
  @JsonKey(name: 'imagePath')
  final String? imagePath;
  @override
  @JsonKey(name: 'articleName')
  final String? articleName;
  @override
  @JsonKey(name: 'articlePrice')
  final String? articlePrice;
  @override
  @JsonKey(name: 'articleInformation')
  final String? articleInformation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MerukariItem(imagePath: $imagePath, articleName: $articleName, articlePrice: $articlePrice, articleInformation: $articleInformation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MerukariItem'))
      ..add(DiagnosticsProperty('imagePath', imagePath))
      ..add(DiagnosticsProperty('articleName', articleName))
      ..add(DiagnosticsProperty('articlePrice', articlePrice))
      ..add(DiagnosticsProperty('articleInformation', articleInformation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MerukariItem &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath) &&
            const DeepCollectionEquality()
                .equals(other.articleName, articleName) &&
            const DeepCollectionEquality()
                .equals(other.articlePrice, articlePrice) &&
            const DeepCollectionEquality()
                .equals(other.articleInformation, articleInformation));
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(imagePath),
        const DeepCollectionEquality().hash(articleName),
        const DeepCollectionEquality().hash(articlePrice),
        const DeepCollectionEquality().hash(articleInformation),
      );

  @JsonKey(ignore: true)
  @override
  _$MerukariItemCopyWith<_MerukariItem> get copyWith =>
      __$MerukariItemCopyWithImpl<_MerukariItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MerukariItemToJson(this);
  }
}

abstract class _MerukariItem implements MerukariItem {
  const factory _MerukariItem(
          {@JsonKey(name: 'imagePath') String? imagePath,
          @JsonKey(name: 'articleName') String? articleName,
          @JsonKey(name: 'articlePrice') String? articlePrice,
          @JsonKey(name: 'articleInformation') String? articleInformation}) =
      _$_MerukariItem;

  factory _MerukariItem.fromJson(Map<String, dynamic> json) =
      _$_MerukariItem.fromJson;

  @override
  @JsonKey(name: 'imagePath')
  String? get imagePath;
  @override
  @JsonKey(name: 'articleName')
  String? get articleName;
  @override
  @JsonKey(name: 'articlePrice')
  String? get articlePrice;
  @override
  @JsonKey(name: 'articleInformation')
  String? get articleInformation;
  @override
  @JsonKey(ignore: true)
  _$MerukariItemCopyWith<_MerukariItem> get copyWith =>
      throw _privateConstructorUsedError;
}
