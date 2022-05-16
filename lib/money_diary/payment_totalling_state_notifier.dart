import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/money_diary/model/totalling_item.dart';
import 'package:tutorial/money_diary/payment_totalling.dart';
import 'package:tutorial/money_diary/repository/money_diary_repository.dart';

import 'package:tutorial/money_diary/money_diary_db.dart';
import 'package:tutorial/money_diary/state/totalling_payment_state.dart';

final paymentTotallingNotifier =
    StateNotifierProvider<PaymentTotallingNotifier, TotallingPaymentState>(
  (ref) => PaymentTotallingNotifier(),
);

class PaymentTotallingNotifier extends StateNotifier<TotallingPaymentState> {
  PaymentTotallingNotifier() : super(const TotallingPaymentState()) {
    getPaymentTotallingData();
  }

  final _totallingRepository = MoneyDiaryRepository();
  Future getPaymentTotallingData() async {
    state = state.copyWith(isLoading: true);

    final List<TotallingPayment> paymentTotalling =
        (await _totallingRepository.getAllPaymentsData())
            .cast<TotallingPayment>();

    if (paymentTotalling.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        totallingPayments: paymentTotalling,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        totallingPayments: [],
      );
    }
  }
}
