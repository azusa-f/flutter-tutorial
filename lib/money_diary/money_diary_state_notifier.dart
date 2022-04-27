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

    final List<Payment> payments = await _repository.getAllPaymentsDate();

    if (payments.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        isReadyData: true,
        payments: payments,
      );
    }
  }
}
