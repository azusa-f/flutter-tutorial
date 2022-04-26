import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/merukari/mvvm/repository/merukari_repository.dart';
import 'package:tutorial/merukari/mvvm/state/merukari_state.dart';

final merukariStateNotifier =
    StateNotifierProvider.autoDispose<MerukaristateNotifier, MerukariState>(
  (ref) => MerukaristateNotifier(ref.read),
);

class MerukaristateNotifier extends StateNotifier<MerukariState> {
  MerukaristateNotifier(this._read) : super(const MerukariState()) {
    fetchMerukariItems();
  }

  final Reader _read;

  Future<void> fetchMerukariItems() async {
    state = state.copyWith(isLoading: true);

    final merukariItems =
        await _read(merukariRepositoryProvider).fetchMerukariItems();

    if (merukariItems.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        merukariItems: merukariItems,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        merukariItems: [],
      );
    }
  }
}
