import 'package:tutorial/money_diary/money_diary_db.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'money_diary_state.freezed.dart';

@freezed
class MoneyDiaryState with _$MoneyDiaryState {
  const factory MoneyDiaryState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    @Default([]) List<Payment> payments,
  }) = _MoneyDiaryState;
}
