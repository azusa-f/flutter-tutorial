import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:tutorial/money_diary/payment_totalling_state_notifier.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:drift/drift.dart' as drift;
import 'package:tutorial/money_diary/select_month_dropdown.dart';
import 'package:tutorial/money_diary/state/totalling_payment_state.dart';

import 'model/totalling_item.dart';

class PaymentTotalling extends ConsumerWidget {
  const PaymentTotalling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _state = ref.watch(paymentTotallingNotifier);
    final _notifier = ref.watch(paymentTotallingNotifier.notifier);

    final totallingItems = _state.totallingPayments;
    final priceFormat = NumberFormat("#,###");
    //var test = paymentItems.where((payment) => payment.category == '家賃');

    int _selectedMonth = DateTime.now().month;

    return Column(children: [
      SelectMonthDropdown(_selectedMonth, _notifier),
      _buildTotallingByCategory(totallingItems, priceFormat),
    ]);
  }

  _buildTotallingByCategory(
      List<TotallingPayment> paymentItems, NumberFormat priceFormat) {
    return Stack(
      children: [
        ListView.builder(
            shrinkWrap: true,
            itemCount: paymentItems.length,
            itemBuilder: (context, index) {
              final _totallingData = paymentItems[index];
              return Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Color.fromARGB(255, 139, 136, 136),
                ))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          _totallingData.category == "家賃"
                              ? const Icon(
                                  Icons.maps_home_work,
                                  size: 40,
                                )
                              : const SizedBox.shrink(),
                          _totallingData.category == "食費"
                              ? const Icon(
                                  Icons.restaurant,
                                  size: 40,
                                )
                              : const SizedBox.shrink(),
                          _totallingData.category == "光熱費"
                              ? const Icon(
                                  Icons.local_fire_department,
                                  size: 40,
                                )
                              : const SizedBox.shrink(),
                          _totallingData.category == "娯楽"
                              ? const Icon(
                                  Icons.auto_awesome,
                                  size: 40,
                                )
                              : const SizedBox.shrink(),
                          _totallingData.category == "日用品"
                              ? const Icon(
                                  Icons.soap,
                                  size: 40,
                                )
                              : const SizedBox.shrink(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _totallingData.category.toString(),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text("¥", style: TextStyle(fontSize: 20)),
                            Text(
                              priceFormat.format(_totallingData.amount),
                              style: const TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ],
    );
  }
}
