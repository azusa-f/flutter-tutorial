import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/money_diary/model/totalling_item.dart';
import 'package:tutorial/money_diary/repository/money_diary_repository.dart';

import 'package:tutorial/money_diary/money_diary_db.dart';
import 'package:tutorial/money_diary/state/totalling_payment_state.dart';

final paymentTotallingNotifier =
    StateNotifierProvider<PaymentTotallingNotifier, TotallingPaymentState>(
  (ref) => PaymentTotallingNotifier(),
);

class PaymentTotallingNotifier extends StateNotifier<TotallingPaymentState> {
  PaymentTotallingNotifier()
      : super(TotallingPaymentState(yearMonth: DateTime.now())) {
    getPaymentTotallingData();
  }

  final _totallingRepository = MoneyDiaryRepository();

  Future filteredMonth(DateTime yearMonth) async {
    // 引数のmonthとstateのmonthが同一だった場合は実行しないようにする
    if (yearMonth == state.yearMonth) {
      return;
    } else {
      getPaymentTotallingData(month: yearMonth);
    }
  }

  Future getPaymentTotallingData({DateTime? month}) async {
    final current = month ?? state.yearMonth;
    state = state.copyWith(isLoading: true, yearMonth: current);

    // 全ての支払い状況を取得する
    final List<Payment> payments =
        await _totallingRepository.getAllPaymentsData();

    // 年で絞り込みをする
    final Iterable<Payment> filterdPaymentsByYear =
        payments.where((payment) => payment.usedDate.year == current.year);

    // 月で絞り込みをする
    final Iterable<Payment> filteredPaymentsByMonth = payments.where(
        (filterdPaymentsByYear) =>
            filterdPaymentsByYear.usedDate.month == current.month);

    final List<TotallingPayment> totallingPayments = [];
    totallingPayments
        .add(convertToTotallingPayment(filteredPaymentsByMonth, '家賃'));
    totallingPayments
        .add(convertToTotallingPayment(filteredPaymentsByMonth, '日用品'));
    totallingPayments
        .add(convertToTotallingPayment(filteredPaymentsByMonth, '食費'));
    totallingPayments
        .add(convertToTotallingPayment(filteredPaymentsByMonth, '光熱費'));
    totallingPayments
        .add(convertToTotallingPayment(filteredPaymentsByMonth, '娯楽'));

    if (totallingPayments.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        totallingPayments: totallingPayments,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        totallingPayments: [],
      );
    }
  }

  TotallingPayment convertToTotallingPayment(
      Iterable<Payment> payments, String category) {
    var total = 0;
    payments
        .where((payment) => payment.category == category)
        .forEach((payment) {
      total += payment.amount;
    });
    return TotallingPayment(
      amount: total,
      category: category,
    );
  }
}
