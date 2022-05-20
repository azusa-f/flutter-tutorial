import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutorial/money_diary/payment_totalling_screen.dart';
import 'package:tutorial/money_diary/payment_totalling_state_notifier.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:drift/drift.dart' as drift;
import 'package:tutorial/money_diary/state/totalling_payment_state.dart';

class SelectMonthDropdown extends StatefulWidget {
  PaymentTotallingNotifier notifier;
  int selectedMonth;

  SelectMonthDropdown(this.selectedMonth, this.notifier, {Key? key})
      : super(key: key);

  @override
  State<SelectMonthDropdown> createState() => _SelectMonthDropdown();
}

class _SelectMonthDropdown extends State<SelectMonthDropdown> {
  @override
  Widget build(BuildContext context) {
    var dateNow = DateTime.now();
    var MonthList = [];

    for (var i = 0; i < 12; i++) {
      var dateNowMinus = DateTime(dateNow.year, dateNow.month - i, dateNow.day);
      MonthList.add(dateNowMinus.month);
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: DropdownButton(
          style: const TextStyle(
            fontSize: 30,
            color: Color.fromARGB(255, 40, 36, 36),
          ),
          value: widget.selectedMonth,
          items: MonthList.map((list) => DropdownMenuItem(
                child: Text("${list.toString()}月"),
                value: list,
              )).toList(),
          onChanged: (value) => {widget.notifier.filteredMonth(value as int)},
        ),
      ),
    );
  }
}
