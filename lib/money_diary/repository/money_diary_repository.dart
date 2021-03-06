import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/money_diary/model/totalling_item.dart';

import 'package:tutorial/money_diary/money_diary_db.dart';

final moneyDiaryRepository = Provider(
  (ref) => MoneyDiaryRepository(),
);

class MoneyDiaryRepository {
  MoneyDiaryDatabase database = MoneyDiaryDatabase();

  Future<List<Payment>> getAllPaymentsData() async {
    final paymentList = database.readAllPayments;
    return paymentList;
  }

  Future insertPaymentData(payment) async {
    return await database.writePayment(payment);
  }

  Future deletePaymentData(int id) async {
    return await database.deletePayment(id);
  }
}
