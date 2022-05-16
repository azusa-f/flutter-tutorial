import 'package:freezed_annotation/freezed_annotation.dart';

part 'totalling_item.freezed.dart';
part 'totalling_item.g.dart';

@freezed
class TotallingPayment with _$TotallingPayment {
  const factory TotallingPayment({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'amount') int? amount,
    @JsonKey(name: 'usedDate') DateTime? usedDate,
    @JsonKey(name: 'category') int? category,
  }) = _TotallingPayment;

  factory TotallingPayment.fromJson(Map<String, dynamic> json) =>
      _$TotallingPaymentFromJson(json);
}
