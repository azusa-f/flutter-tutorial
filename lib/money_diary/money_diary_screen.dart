import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutorial/money_diary/money_diary_state_notifier.dart';
import 'package:tutorial/money_diary/payment_dialog.dart';
import 'package:tutorial/money_diary/payment_list.dart';
import 'package:tutorial/money_diary/payment_totalling_screen.dart';

import 'money_diary_db.dart';

class MoneyDiaryHome extends StatefulWidget {
  const MoneyDiaryHome({Key? key}) : super(key: key);

  @override
  _MoneyDiaryHome createState() => _MoneyDiaryHome();
}

class _MoneyDiaryHome extends State {
  static const Color moneyDiaryMainColor = Color.fromARGB(
    255,
    94,
    71,
    59,
  );

  var _selectIndex = 0;

  static final List<Widget> _pageList = [
    const PaymentList(),
    const PaymentTotalling(),
  ];
  static final List<String> _appBarTitleList = [
    '支出一覧',
    '集計',
  ];

  void _onTapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        245,
        242,
        228,
      ),
      appBar: _buildAppBar(
        context,
      ),
      body: _pageList[_selectIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showEditDialog(context, moneyDiaryMainColor);
        },
        backgroundColor: moneyDiaryMainColor,
        child: const Icon(Icons.edit),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Future _showEditDialog(BuildContext context, Color moneyDiaryMainColor) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: SizedBox(
              child: PaymentAddButton(),
            ),
          );
        });
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: moneyDiaryMainColor,
      title: Text(_appBarTitleList[_selectIndex]),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: moneyDiaryMainColor,
      selectedItemColor: Colors.white,
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
      currentIndex: _selectIndex,
      onTap: _onTapItem,
    );
  }
}

class PaymentAddButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _notifier = ref.watch(moneyDiaryStateNotifier.notifier);

    return SizedBox(height: 400, child: _showEditDialog(context, _notifier));
  }

  _showEditDialog(
    BuildContext context,
    MoneyDiaryStateNotifier notifier,
  ) {
    final _payedAmount = TextEditingController();
    var _payedDate = TextEditingController();
    final _format = DateFormat('yyyy-MM-dd');
    final _formKey = GlobalKey<FormState>();
    String _selectedCategory = '家賃';
    final PaymentEditDialog _paymentEditDialog = PaymentEditDialog(
        _selectedCategory, _payedAmount, _payedDate, _format, _formKey);

    return Column(
      children: [
        _paymentEditDialog,
        ElevatedButton(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              final _payedDate =
                  _format.parseStrict(_paymentEditDialog.payedDate.text);
              final _newPayment = PaymentsCompanion(
                amount:
                    drift.Value(int.parse(_paymentEditDialog.payedAmount.text)),
                usedDate: drift.Value(_payedDate),
                category: drift.Value(_paymentEditDialog.selectedCategory),
              );
              notifier.insertPaymentData(_newPayment);
              Navigator.pop(context);
            }
          },
          child: const Text('登録'),
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(
              255,
              94,
              71,
              59,
            ),
          ),
        )
      ],
    );
  }
}
