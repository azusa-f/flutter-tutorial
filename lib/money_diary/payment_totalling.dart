import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutorial/money_diary/money_diary_state_notifier.dart';
import 'package:tutorial/todo_app/state/todo_client_state.dart';
import 'package:tutorial/todo_app/todo_db.dart';
import 'package:tutorial/todo_app/todo_state_notifier.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:drift/drift.dart' as drift;

class PaymentTotalling extends ConsumerWidget {
  const PaymentTotalling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _state = ref.watch(moneyDiaryStateNotifier);
    final _notifier = ref.watch(moneyDiaryStateNotifier.notifier);

    final paymentItems = _state.payments;
    var test = paymentItems.where((payment) => payment.category == '家賃');

    print(test);
    return Container(
      child: Text("aaa"),
    );
  }
}
