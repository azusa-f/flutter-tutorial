import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/residence/mvvm/repository/residence_repository.dart';
import 'package:tutorial/residence/mvvm/state/residence_state.dart';

final residenceStateNotifier =
    StateNotifierProvider.autoDispose<ResidenceStateNotifier, ResidenceState>(
  (ref) => ResidenceStateNotifier(ref.read),
);

class ResidenceStateNotifier extends StateNotifier<ResidenceState> {
  ResidenceStateNotifier(this._read) : super(const ResidenceState()) {
    fetchResidenceItems();
  }

  final Reader _read;

  Future<void> fetchResidenceItems() async {
    state = state.copyWith(isLoading: true);

    final residenceItems =
        await _read(residenceRepositoryProvider).fetchResidenceItems();

    if (residenceItems.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        residenceItems: residenceItems,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        residenceItems: [],
      );
    }
  }
}
