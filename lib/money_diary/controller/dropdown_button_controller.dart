import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'dropdown_button_controller.freezed.dart';

@freezed
class DropdownButtonPageState with _$DropdownButtonPageState {
  const factory DropdownButtonPageState({
    String? selectedCategory,
  }) = _DropdownButtonPageState;
}

final dropdownPageProvider = StateNotifierProvider.autoDispose<
    DropdownButtonPageController, DropdownButtonPageState>((ref) {
  return DropdownButtonPageController();
});

class DropdownButtonPageController
    extends StateNotifier<DropdownButtonPageState> {
  DropdownButtonPageController() : super(const DropdownButtonPageState());

  void selectedCategory(String? selectedCategory) {
    state = state.copyWith(selectedCategory: selectedCategory);
  }
}
