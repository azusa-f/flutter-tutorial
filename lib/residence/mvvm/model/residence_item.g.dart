// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'residence_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResidenceItem _$$_ResidenceItemFromJson(Map<String, dynamic> json) =>
    _$_ResidenceItem(
      imagePath: json['imagePath'] as String?,
      floorImagePath: json['floorImagePath'] as String?,
      buildingName: json['buildingName'] as String?,
      residencePrice: json['residencePrice'] as String?,
      nearesetStation: json['nearesetStation'] as String?,
      roomInformation: json['roomInformation'] as String?,
      buildingInformation: json['buildingInformation'] as String?,
    );

Map<String, dynamic> _$$_ResidenceItemToJson(_$_ResidenceItem instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'floorImagePath': instance.floorImagePath,
      'buildingName': instance.buildingName,
      'residencePrice': instance.residencePrice,
      'nearesetStation': instance.nearesetStation,
      'roomInformation': instance.roomInformation,
      'buildingInformation': instance.buildingInformation,
    };
