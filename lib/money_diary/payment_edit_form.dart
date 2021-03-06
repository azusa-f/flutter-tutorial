import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentEditForm extends StatefulWidget {
  String selectedCategory;
  final TextEditingController payedAmount;
  final TextEditingController payedDate;
  final DateFormat format;
  final GlobalKey<FormState> formKey;

  PaymentEditForm(this.selectedCategory, this.payedAmount, this.payedDate,
      this.format, this.formKey,
      {Key? key})
      : super(key: key);

  @override
  State<PaymentEditForm> createState() => _PaymentEditForm();
}

class _PaymentEditForm extends State<PaymentEditForm> {
  @override
  Widget build(BuildContext context) {
    final _format = widget.format;

    return Form(
      key: widget.formKey,
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 24),
          child: Text("新しい支出"),
        ),
        TextFormField(
          controller: widget.payedAmount,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            hintText: '金額',
            icon: Icon(
              Icons.currency_yen,
              color: Color.fromARGB(
                255,
                94,
                71,
                59,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: Color.fromARGB(
                255,
                94,
                71,
                59,
              ),
            )),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '入力してください';
            }
            return null;
          },
        ),
        Row(
          children: [
            const Icon(
              Icons.category,
              color: Color.fromARGB(
                255,
                112,
                109,
                109,
              ),
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
                locale: const Locale("ja"),
                initialDate: DateTime.now(),
                firstDate: DateTime(2022),
                lastDate: DateTime(2023),
                helpText: '日付を選択',
                cancelText: 'キャンセル',
                confirmText: '決定',
                builder: (context, child) {
                  return Theme(
                      data: Theme.of(context).copyWith(
                          colorScheme: const ColorScheme.light(
                        primary: Color.fromARGB(
                          255,
                          94,
                          71,
                          59,
                        ),
                      )),
                      child: child!);
                });
            final _formatDate = _format.format(_usedDate!);
            widget.payedDate.text = _formatDate;
          },
          validator: (_formatDate) {
            if (_formatDate == null || _formatDate.isEmpty) {
              return '入力してください';
            }

            return null;
          },
          decoration: const InputDecoration(
            hintText: '日付',
            icon: Icon(
              Icons.calendar_today,
              color: Color.fromARGB(
                255,
                112,
                109,
                109,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(
                  255,
                  94,
                  71,
                  59,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
