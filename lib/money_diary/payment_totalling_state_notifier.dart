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
      : super(TotallingPaymentState(month: DateTime.now().month)) {
    getPaymentTotallingData();
  }

  final _totallingRepository = MoneyDiaryRepository();

  Future filteredMonth(int month) async {
    state = state.copyWith(month: month);
    getPaymentTotallingData();
  }

  Future getPaymentTotallingData() async {
    state = state.copyWith(isLoading: true);

    final List<Payment> payments =
        await _totallingRepository.getAllPaymentsData();

    final month = state.month;
    final Iterable<Payment> filteredPayments =
        payments.where((payment) => payment.usedDate.month == month);

    final List<TotallingPayment> totallingPayments = [];
    totallingPayments.add(convertToTotallingPayment(filteredPayments, '家賃'));
    totallingPayments.add(convertToTotallingPayment(filteredPayments, '日用品'));
    totallingPayments.add(convertToTotallingPayment(filteredPayments, '食費'));
    totallingPayments.add(convertToTotallingPayment(filteredPayments, '光熱費'));
    totallingPayments.add(convertToTotallingPayment(filteredPayments, '娯楽'));

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
