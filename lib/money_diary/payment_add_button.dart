import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:tutorial/money_diary/money_diary_state_notifier.dart';
import 'package:tutorial/money_diary/payment_dialog.dart';
import 'package:tutorial/money_diary/payment_list.dart';

import 'money_diary_db.dart';

class PaymentAddButton extends ConsumerWidget {
  const PaymentAddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _state = ref.watch(moneyDiaryStateNotifier);
    final _notifier = ref.watch(moneyDiaryStateNotifier.notifier);
    print("aaa");

    return Container(
      child: _showEditDialog(context, _notifier),
    );
  }

  _showEditDialog(BuildContext context, MoneyDiaryStateNotifier notifier) {
    final _payedAmount = TextEditingController();
    var _payedDate = TextEditingController();
    final _format = DateFormat('yyyy-MM-dd');
    final _formKey = GlobalKey<FormState>();
    String _selectedCategory = '家賃';
    final PaymentEditDialog _paymentEditDialog = PaymentEditDialog(
        _selectedCategory, _payedAmount, _payedDate, _format, _formKey);

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: SizedBox(
              child: _paymentEditDialog,
            ),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('キャンセル'),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final _payedDate =
                        _format.parseStrict(_paymentEditDialog.payedDate.text);
                    final _newPayment = PaymentsCompanion(
                      amount: drift.Value(
                          int.parse(_paymentEditDialog.payedAmount.text)),
                      usedDate: drift.Value(_payedDate),
                      category:
                          drift.Value(_paymentEditDialog.selectedCategory),
                    );
                    notifier.insertPaymentData(_newPayment);
                    Navigator.pop(context);
                  }
                },
                child: const Text('登録'),
              )
            ],
          );
        });
  }
}
