import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/money_diary/model/totalling_item.dart';
import 'package:tutorial/money_diary/money_diary_db.dart';

final totallingPaymentRepository = Provider(
  (ref) => TotallingPaymentRepository(),
);

class TotallingPaymentRepository {
  MoneyDiaryDatabase database = MoneyDiaryDatabase();
  Future<Future<List<Payment>>> getPaymentTotallingData() async {
    final paymentTotallingList = database.readAllPayments;
    return paymentTotallingList;
  }
}
