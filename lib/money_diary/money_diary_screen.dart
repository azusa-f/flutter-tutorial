import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:tutorial/money_diary/money_diary_state_notifier.dart';
import 'package:tutorial/money_diary/payment_add_button.dart';
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
  static const Color MoneyDiaryMainColor = Color.fromARGB(
    255,
    180,
    173,
    173,
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
    // final _state = ref.watch(moneyDiaryStateNotifier);
    // final _notifier = ref.watch(moneyDiaryStateNotifier.notifier);

    return Scaffold(
      appBar: _buildAppBar(
        context,
      ),
      body: _pageList[_selectIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const PaymentAddButton();
        },
        backgroundColor: MoneyDiaryMainColor,
        child: const Icon(Icons.edit),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: MoneyDiaryMainColor,
      title: Text(_appBarTitleList[_selectIndex]),
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
      currentIndex: _selectIndex,
      onTap: _onTapItem,
    );
  }
}
