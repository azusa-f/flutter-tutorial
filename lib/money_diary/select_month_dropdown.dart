import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutorial/money_diary/payment_totalling_state_notifier.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:drift/drift.dart' as drift;

class SelectMonthDropdown extends StatefulWidget {
  @override
  State<SelectMonthDropdown> createState() => _SelectMonthDropdown();
}

class _SelectMonthDropdown extends State<SelectMonthDropdown> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DropdownButton(
        items: const [
          DropdownMenuItem<String>(
            child: Text("１月"),
            value: '1',
          ),
        ],
        onChanged: (value) => {print(value)},
      ),
    );
  }
}
