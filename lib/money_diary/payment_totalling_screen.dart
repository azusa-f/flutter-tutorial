import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutorial/money_diary/payment_totalling_state_notifier.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:drift/drift.dart' as drift;
import 'package:tutorial/money_diary/select_month_dropdown.dart';

class PaymentTotalling extends ConsumerWidget {
  const PaymentTotalling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _state = ref.watch(paymentTotallingNotifier);
    final _notifier = ref.watch(paymentTotallingNotifier.notifier);

    final paymentItems = _state.totallingPayments;
    //var test = paymentItems.where((payment) => payment.category == '家賃');

    final List monthList = [
      '１月',
      '２月',
      '３月',
      '４月',
      '５月',
      '６月',
      '７月',
      '８月',
      '９月',
      '１０月',
      '１１月',
      '１２月',
    ];

    return Column(children: [
      SelectMonthDropdown(),
    ]);
  }
}
