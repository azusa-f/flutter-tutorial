import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutorial/money_diary/money_diary_state_notifier.dart';
import 'package:tutorial/money_diary/payment_edit_form.dart';
import 'package:tutorial/money_diary/payment_list.dart';
import 'package:tutorial/money_diary/payment_totalling_screen.dart';

import 'money_diary_db.dart';

class MoneyDiaryScreen extends StatefulWidget {
  const MoneyDiaryScreen({Key? key}) : super(key: key);

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

  static const Color _backGroundColor = Color.fromARGB(
    255,
    245,
    242,
    228,
  );

  var _selectIndex = 0;

  static final List<Widget> _pageList = [
    const PaymentList(),
    const PaymentTotallingScreen(),
  ];
  static final List<String> _appBarTitleList = [
    '支出一覧',
    '集計',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor,
      appBar: _buildAppBar(
        context,
      ),
      body: _pageList[_selectIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showEditDialog(context);
        },
        backgroundColor: moneyDiaryMainColor,
        child: const Icon(Icons.edit),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Future _showEditDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            child: PaymentEditDialog(moneyDiaryMainColor),
            constraints: const BoxConstraints(maxHeight: 348),
          ),
        );
      },
    );
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
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.format_list_bulleted),
          label: _appBarTitleList[0],
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.savings),
          label: _appBarTitleList[1],
        ),
      ],
      currentIndex: _selectIndex,
      onTap: _onTapItem,
    );
  }

  void _onTapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
}

class PaymentEditDialog extends ConsumerWidget {
  Color moneyDiaryMainColor;
  PaymentEditDialog(this.moneyDiaryMainColor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _notifier = ref.watch(moneyDiaryStateNotifier.notifier);

    return _showEditForm(context, _notifier, moneyDiaryMainColor);
  }

  _showEditForm(
    BuildContext context,
    MoneyDiaryStateNotifier notifier,
    moneyDiaryMainColor,
  ) {
    final _payedAmount = TextEditingController();
    var _payedDate = TextEditingController();
    final _format = DateFormat('yyyy-MM-dd');
    final _formKey = GlobalKey<FormState>();
    String _selectedCategory = '家賃';
    final PaymentEditForm _paymentEditForm = PaymentEditForm(
        _selectedCategory, _payedAmount, _payedDate, _format, _formKey);

    return Column(
      children: [
        _paymentEditForm,
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: ElevatedButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                final _payedDate =
                    _format.parseStrict(_paymentEditForm.payedDate.text);
                final _newPayment = PaymentsCompanion(
                  amount:
                      drift.Value(int.parse(_paymentEditForm.payedAmount.text)),
                  usedDate: drift.Value(_payedDate),
                  category: drift.Value(_paymentEditForm.selectedCategory),
                );
                notifier.insertPaymentData(_newPayment);
                Navigator.pop(context);
              }
            },
            child: const Text('登録'),
            style: ElevatedButton.styleFrom(
              primary: moneyDiaryMainColor,
            ),
          ),
        )
      ],
    );
  }
}
