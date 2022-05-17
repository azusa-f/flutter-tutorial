import 'package:tutorial/money_diary/model/totalling_item.dart';
import 'package:tutorial/money_diary/money_diary_db.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'totalling_payment_state.freezed.dart';

@freezed
class TotallingPaymentState with _$TotallingPaymentState {
  const factory TotallingPaymentState({
    required int month,
    @Default(false) bool isLoading,
    // @Default(false) bool isReadyData,
    @Default([]) List<TotallingPayment> totallingPayments,
  }) = _TotallingPaymentState;
}
