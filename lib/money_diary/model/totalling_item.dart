import 'package:freezed_annotation/freezed_annotation.dart';

part 'totalling_item.freezed.dart';
part 'totalling_item.g.dart';

@freezed
class TotallingPayment with _$TotallingPayment {
  const factory TotallingPayment({
    @JsonKey(name: 'amount') int? amount,
    @JsonKey(name: 'category') String? category,
  }) = _TotallingPayment;

  factory TotallingPayment.fromJson(Map<String, dynamic> json) =>
      _$TotallingPaymentFromJson(json);
}
