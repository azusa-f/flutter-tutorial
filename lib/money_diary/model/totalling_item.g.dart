// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'totalling_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TotallingPayment _$$_TotallingPaymentFromJson(Map<String, dynamic> json) =>
    _$_TotallingPayment(
      id: json['id'] as int?,
      amount: json['amount'] as int?,
      usedDate: json['usedDate'] == null
          ? null
          : DateTime.parse(json['usedDate'] as String),
      category: json['category'] as int?,
    );

Map<String, dynamic> _$$_TotallingPaymentToJson(_$_TotallingPayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'usedDate': instance.usedDate?.toIso8601String(),
      'category': instance.category,
    };
