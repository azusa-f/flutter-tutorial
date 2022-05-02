import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutorial/money_diary/money_diary_state_notifier.dart';
import 'package:tutorial/money_diary/money_diary_state_notifier.dart';

import 'money_diary_db.dart';

class MoneyDiaryScreen extends ConsumerWidget {
  const MoneyDiaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _state = ref.watch(moneyDiaryStateNotifier);
    final _notifier = ref.watch(moneyDiaryStateNotifier.notifier);

    return Scaffold(
      appBar: _buildAppBar(
        context,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showEditDialog(context, _notifier);
        },
        child: const Icon(Icons.edit),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 180, 173, 173),
    );
  }
}

_showEditDialog(BuildContext context, MoneyDiaryStateNotifier _notifier) {
  final _testdate = DateTime.now();
  final _amount = 100000;
  final _category = "食費";
  final _test = PaymentsCompanion(
    amount: drift.Value(_amount.toInt()),
    category: drift.Value(_category.toString()),
    addDate: drift.Value(_testdate),
  );
  print(_test);
  _notifier.insertPaymentData(_test);
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: SizedBox(
          height: 200,
          child: Column(
            children: const [
              Text("入力"),
              TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  hintText: "¥",
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
