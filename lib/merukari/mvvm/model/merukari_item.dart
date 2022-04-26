// ignore_for_file: prefer_single_quotes

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'merukari_item.freezed.dart';
part 'merukari_item.g.dart';

@freezed
class MerukariItem with _$MerukariItem {
  const factory MerukariItem({
    @JsonKey(name: 'imagePath') String? imagePath,
    @JsonKey(name: 'articleName') String? articleName,
    @JsonKey(name: 'articlePrice') String? articlePrice,
    @JsonKey(name: 'articleInformation') String? articleInformation,
  }) = _MerukariItem;

  factory MerukariItem.fromJson(Map<String, dynamic> json) =>
      _$MerukariItemFromJson(json);
}
