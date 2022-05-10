import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:tutorial/money_diary/money_diary_state_notifier.dart';
import 'package:tutorial/money_diary/money_diary_state_notifier.dart';

import 'controller/dropdown_button_controller.dart';
import 'money_diary_db.dart';

class MoneyDiaryScreen extends ConsumerStatefulWidget {
  const MoneyDiaryScreen({Key? key}) : super(key: key);

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

    final selectedCategory = ref
        .watch(dropdownPageProvider.select((state) => state.selectedCategory));

    final paymentItems = _state.payments;
    //var test = paymentItems.where((payment) => payment.category == '家賃');

    return Scaffold(
      appBar: _buildAppBar(
        context,
      ),
      body: _buildPaymentLists(paymentItems),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showEditDialog(context, _notifier, selectedCategory, ref);
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

  _showEditDialog(BuildContext context, MoneyDiaryStateNotifier _notifier,
      selectedCategory, WidgetRef ref) {
    final _format = DateFormat('yyyy-MM-dd');
    final _formKey = GlobalKey<FormState>();
    final _payedAmount = TextEditingController();
    final _payedCategory = TextEditingController();
    var _payedDate = TextEditingController();

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            key: _formKey,
            height: 200,
            child: Column(
              children: [
                const Text("新しい支出"),
                TextField(
                  controller: _payedAmount,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: '金額',
                    icon: Icon(Icons.currency_yen),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.category,
                      color: Color.fromARGB(255, 112, 109, 109),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: DropdownButton<String>(
                        value: selectedCategory,
                        hint: const Text('カテゴリー'),
                        items: const [
                          DropdownMenuItem(
                            child: Text("家賃"),
                            value: '家賃',
                          ),
                          DropdownMenuItem(
                            child: Text("光熱費"),
                            value: '光熱費',
                          ),
                          DropdownMenuItem(
                            child: Text("食費"),
                            value: '食費',
                          ),
                          DropdownMenuItem(
                            child: Text("日用品"),
                            value: '日用品',
                          ),
                          DropdownMenuItem(
                            child: Text("娯楽"),
                            value: '娯楽',
                          ),
                        ],
                        onChanged: ref
                            .read(dropdownPageProvider.notifier)
                            .selectedCategory,
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  controller: _payedDate,
                  onTap: () async {
                    final _usedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2022),
                      lastDate: DateTime(2023),
                      helpText: '日付を選択',
                      cancelText: 'キャンセル',
                      confirmText: '決定',
                    );
                    final _formatDate = _format.format(_usedDate!);
                    _payedDate.text = _formatDate;
                  },
                  decoration: const InputDecoration(
                    hintText: '日付',
                    icon: Icon(Icons.calendar_today),
                  ),
                ),
              ],
            ),
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
                final _paymentDate = _format.parseStrict(_payedDate.text);
                final _paymentAmount = int.parse(_payedAmount.text);
                // if (_formKey.currentState!.validate()) {
                //   final _newPayment = PaymentsCompanion(
                //     amount: drift.Value(_paymentAmount),
                //     usedDate: drift.Value(_paymentDate),
                //     category: drift.Value(selectedCategory),
                //   );
                //   _notifier.insertPatmentData(_newPayment);

                // }
                print(selectedCategory);
                print(_paymentAmount);
              },
              child: const Text('登録'),
            ),
          ],
        );
      },
    );
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

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
