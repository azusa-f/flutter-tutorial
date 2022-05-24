import 'package:flutter/material.dart';
import 'package:tutorial/money_diary/payment_totalling_state_notifier.dart';

class SelectMonthDropdown extends StatefulWidget {
  PaymentTotallingNotifier notifier;
  DateTime selectedMonth;

  SelectMonthDropdown(this.selectedMonth, this.notifier, {Key? key})
      : super(key: key);

  @override
  State<SelectMonthDropdown> createState() => _SelectMonthDropdown();
}

class _SelectMonthDropdown extends State<SelectMonthDropdown> {
  @override
  Widget build(BuildContext context) {
    var dateNow = widget.selectedMonth;
    var dateNowOnlyDay = DateTime(
      dateNow.year,
      dateNow.month,
      dateNow.day,
    );
    var valueList = [];

    for (var i = 0; i < 12; i++) {
      var dateNowSort = DateTime(
        dateNowOnlyDay.year,
        dateNowOnlyDay.month - i,
        dateNowOnlyDay.day,
      );
      valueList.add(dateNowSort);
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: DropdownButton(
          style: const TextStyle(
            fontSize: 30,
            color: Color.fromARGB(255, 40, 36, 36),
          ),
          value: dateNowOnlyDay,
          items: valueList
              .map((list) => DropdownMenuItem(
                    child: Text("${list.month}月"),
                    value: list,
                  ))
              .toList(),
          onChanged: (value) =>
              {widget.notifier.filteredMonth(value as DateTime)},
        ),
      ),
    );
  }
}
