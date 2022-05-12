import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentEditDialog extends StatefulWidget {
  String selectedCategory;
  final TextEditingController payedAmount;
  final TextEditingController payedDate;
  final DateFormat format;

  PaymentEditDialog(
      this.selectedCategory, this.payedAmount, this.payedDate, this.format,
      {Key? key})
      : super(key: key);

  @override
  State<PaymentEditDialog> createState() => _PaymentEditDialog();
}

class _PaymentEditDialog extends State<PaymentEditDialog> {
  @override
  Widget build(BuildContext context) {
    final _format = widget.format;
    final _formKey = GlobalKey<FormState>();

    return SizedBox(
      key: _formKey,
      height: 200,
      child: Column(
        children: [
          const Text("新しい支出"),
          TextField(
            controller: widget.payedAmount,
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
                  value: widget.selectedCategory,
                  hint: const Text('カテゴリー'),
                  items: const [
                    DropdownMenuItem<String>(
                      child: Text("家賃"),
                      value: '家賃',
                    ),
                    DropdownMenuItem<String>(
                      child: Text("光熱費"),
                      value: '光熱費',
                    ),
                    DropdownMenuItem<String>(
                      child: Text("食費"),
                      value: '食費',
                    ),
                    DropdownMenuItem<String>(
                      child: Text("日用品"),
                      value: '日用品',
                    ),
                    DropdownMenuItem<String>(
                      child: Text("娯楽"),
                      value: '娯楽',
                    ),
                  ],
                  onChanged: (value) => {
                    setState(() {
                      widget.selectedCategory = value.toString();
                    })
                  },
                ),
              ),
            ],
          ),
          TextFormField(
            controller: widget.payedDate,
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
              widget.payedDate.text = _formatDate;
            },
            decoration: const InputDecoration(
              hintText: '日付',
              icon: Icon(Icons.calendar_today),
            ),
          ),
        ],
      ),
    );
  }
}
