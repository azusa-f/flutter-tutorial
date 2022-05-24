import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutorial/money_diary/money_diary_state_notifier.dart';

class PaymentListScreen extends ConsumerWidget {
  const PaymentListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _state = ref.watch(moneyDiaryStateNotifier);
    final priceFormat = NumberFormat("#,###");
    final paymentItems = _state.payments;

    return ListView.builder(
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
                          _paymentData.category == "光熱費"
                              ? const Icon(
                                  Icons.local_fire_department,
                                )
                              : const SizedBox.shrink(),
                          _paymentData.category == "娯楽"
                              ? const Icon(
                                  Icons.auto_awesome,
                                )
                              : const SizedBox.shrink(),
                          _paymentData.category == "日用品"
                              ? const Icon(
                                  Icons.soap,
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
                            priceFormat.format(_paymentData.amount),
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
    );
  }
}
