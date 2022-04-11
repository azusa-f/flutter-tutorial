import 'package:tutorial/youtube/repository/youtube_repository.dart';
import 'package:tutorial/youtube/state/youtube_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final youtubeStateNotifier =
    StateNotifierProvider.autoDispose<YoutubeStateNotifer, YoutubeState>(
        (ref) => YoutubeStateNotifer(ref.read));

class YoutubeStateNotifer extends StateNotifier<YoutubeState> {
  YoutubeStateNotifer(this._read) : super(YoutubeState());

  final Reader _read;

  Future<void> fetchYoutubeItems(String tag) async {
    state = state.copyWith(isLoading: true);

    final youtubeItems =
        await _read(youtubeRepositoryProvider).fetchYoutubeItems();

    //   if (youtubeItems.isNotEmpty) {
    //     state = state.copyWith(
    //       isLoading: false,
    //       isReadyData: true,
    //       currentTag: tag,
    //       youtubeItems: youtubeItems,
    //     );
    //   } else {
    //     state = state.copyWith(
    //       isLoading: false,
    //       isReadyData: false,
    //       youtubeItems: youtubeItems,
    //     );
    //   }
    // }

    // onBackHome() {
    //   state = state.copyWith(
    //     isLoading: false,
    //     isReadyData: false,
    //     currentTag: "",
    //   );
  }
}
