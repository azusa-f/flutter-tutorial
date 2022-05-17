import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutorial/money_diary/payment_totalling_state_notifier.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:drift/drift.dart' as drift;
import 'package:tutorial/money_diary/state/totalling_payment_state.dart';

class SelectMonthDropdown extends StatefulWidget {
  int selectedMonth;
  SelectMonthDropdown(this.selectedMonth, TotallingPaymentState state,
      {Key? key})
      : super(key: key);

  @override
  State<SelectMonthDropdown> createState() => _SelectMonthDropdown();
}

class _SelectMonthDropdown extends State<SelectMonthDropdown> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DropdownButton(
        value: widget.selectedMonth,
        items: const [
          DropdownMenuItem(
            child: Text("１月"),
            value: 1,
          ),
          DropdownMenuItem(
            child: Text("２月"),
            value: 2,
          ),
          DropdownMenuItem(
            child: Text("３月"),
            value: 3,
          ),
          DropdownMenuItem(
            child: Text("４月"),
            value: 4,
          ),
          DropdownMenuItem(
            child: Text("５月"),
            value: 5,
          ),
          DropdownMenuItem(
            child: Text("６月"),
            value: 6,
          ),
          DropdownMenuItem(
            child: Text("７月"),
            value: 7,
          ),
          DropdownMenuItem(
            child: Text("８月"),
            value: 8,
          ),
          DropdownMenuItem(
            child: Text("９月"),
            value: 9,
          ),
          DropdownMenuItem(
            child: Text("１０月"),
            value: 10,
          ),
          DropdownMenuItem(
            child: Text("１１月"),
            value: 11,
          ),
          DropdownMenuItem(
            child: Text("１２月"),
            value: 12,
          ),
        ],
        onChanged: (value) => {
          setState(() {
            widget.selectedMonth = value as int;
          }),
          // print();
        },
      ),
    );
  }
}
