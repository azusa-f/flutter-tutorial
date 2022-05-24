import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/money_diary/repository/money_diary_repository.dart';
import 'package:tutorial/money_diary/state/money_diary_state.dart';
import 'package:tutorial/money_diary/money_diary_db.dart';

final moneyDiaryStateNotifier =
    StateNotifierProvider<MoneyDiaryStateNotifier, MoneyDiaryState>(
  (ref) => MoneyDiaryStateNotifier(),
);

class MoneyDiaryStateNotifier extends StateNotifier<MoneyDiaryState> {
  MoneyDiaryStateNotifier() : super(const MoneyDiaryState()) {
    getPaymentData();
  }

  final _repository = MoneyDiaryRepository();
  Future getPaymentData() async {
    state = state.copyWith(isLoading: true);

    final List<Payment> payments = await _repository.getAllPaymentsData();
    payments.sort((a, b) => b.usedDate.compareTo(a.usedDate));

    if (payments.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        isReadyData: true,
        payments: payments,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        isReadyData: false,
        payments: [],
      );
    }
  }

  Future insertPaymentData(payment) async {
    state = state.copyWith(isLoading: true);
    _repository.insertPaymentData(payment);
    await getPaymentData();
  }

  Future deletePaymentData(int id) async {
    await _repository.deletePaymentData(id);
    getPaymentData();
  }
}
