import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'residence_item.freezed.dart';
part 'residence_item.g.dart';

@freezed
class ResidenceItem with _$ResidenceItem {
  const factory ResidenceItem({
    @JsonKey(name: "imagePath") String? imagePath,
    @JsonKey(name: "floorImagePath") String? floorImagePath,
    @JsonKey(name: "buildingName") String? buildingName,
    @JsonKey(name: "residencePrice") String? residencePrice,
    @JsonKey(name: "nearesetStation") String? nearesetStation,
    @JsonKey(name: "roomInformation") String? roomInformation,
    @JsonKey(name: "buildingInformation") String? buildingInformation,
  }) = _ResidenceItem;

  factory ResidenceItem.fromJson(Map<String, dynamic> json) =>
      _$ResidenceItemFromJson(json);
}
