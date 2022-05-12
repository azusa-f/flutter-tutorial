import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:tutorial/money_diary/money_diary_state_notifier.dart';
import 'package:tutorial/money_diary/payment_dialog.dart';
import 'package:tutorial/todo_app/todo_db.dart';

import 'money_diary_db.dart';

class MoneyDiaryScreen extends ConsumerWidget {
  MoneyDiaryScreen({Key? key}) : super(key: key);

  static const Color MoneyDiaryMainColor = Color.fromARGB(
    255,
    180,
    173,
    173,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _state = ref.watch(moneyDiaryStateNotifier);
    final _notifier = ref.watch(moneyDiaryStateNotifier.notifier);

    final paymentItems = _state.payments;
    //var test = paymentItems.where((payment) => payment.category == '家賃');

    return Scaffold(
      appBar: _buildAppBar(
        context,
      ),
      body: _buildPaymentLists(paymentItems),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showEditDialog(context, _notifier);
        },
        backgroundColor: MoneyDiaryMainColor,
        child: const Icon(Icons.edit),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: MoneyDiaryMainColor, title: const Text("支出一覧"));
  }

  Widget _buildPaymentLists(List<Payment> paymentItems) {
    return Stack(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: paymentItems.length,
          itemBuilder: ((context, index) {
            final _paymentData = paymentItems[index];

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          DateFormat('yyyy年M月d日').format(_paymentData.usedDate),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              _paymentData.category == "家賃"
                                  ? const Icon(
                                      Icons.maps_home_work,
                                    )
                                  : const SizedBox.shrink(),
                              _paymentData.category == "食費"
                                  ? const Icon(
                                      Icons.restaurant,
                                    )
                                  : const SizedBox.shrink(),
                              _paymentData.category == "光熱費"
                                  ? const Icon(
                                      Icons.local_fire_department,
                                    )
                                  : const SizedBox.shrink(),
                              _paymentData.category == "娯楽"
                                  ? const Icon(
                                      Icons.auto_awesome,
                                    )
                                  : const SizedBox.shrink(),
                              _paymentData.category == "日用品"
                                  ? const Icon(
                                      Icons.soap,
                                    )
                                  : const SizedBox.shrink(),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  children: [
                                    Text(
                                      _paymentData.category,
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text("¥", style: TextStyle(fontSize: 20)),
                              Text(
                                _paymentData.amount.toString(),
                                style: const TextStyle(fontSize: 20),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }

  _showEditDialog(BuildContext context, MoneyDiaryStateNotifier notifier) {
    final _payedAmount = TextEditingController();
    var _payedDate = TextEditingController();
    String _selectedCategory = '家賃';
    final _format = DateFormat('yyyy-MM-dd');
    final PaymentEditDialog _paymentEditDialog = PaymentEditDialog(
      _selectedCategory,
      _payedAmount,
      _payedDate,
      _format,
    );
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
                  final _payedDate =
                      _format.parseStrict(_paymentEditDialog.payedDate.text);
                  final _newPayment = PaymentsCompanion(
                    amount: drift.Value(
                        int.parse(_paymentEditDialog.payedAmount.text)),
                    usedDate: drift.Value(_payedDate),
                    category: drift.Value(_paymentEditDialog.selectedCategory),
                  );
                  notifier.insertPaymentData(_newPayment);
                  Navigator.pop(context);
                },
                child: const Text('登録'),
              )
            ],
          );
        });
  }

  BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_bulleted),
          label: "支出一覧",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.savings),
          label: "集計",
        ),
      ],
    );
  }
}
