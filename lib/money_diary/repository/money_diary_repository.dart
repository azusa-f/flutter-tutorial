import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/money_diary/money_diary_db.dart';

final moneyDiaryRepository = Provider(
  (ref) => MoneyDiaryRepository(),
);

class MoneyDiaryRepository {
  MoneyDiaryDatabase database = MoneyDiaryDatabase();
  Future<List<Payment>> getAllPaymentsDate() async {
    final paymentList = database.readAllPayments;
    return paymentList;
  }
}
