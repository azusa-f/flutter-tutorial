import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tutorial/youtube/model/youtube_item.dart';

part 'youtube_state.freezed.dart';

@freezed
class YoutubeState with _$YoutubeState {
  const factory YoutubeState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyDate,
    @Default(<YoutubeItem>[]) List<YoutubeItem> youtubeItems,
    @Default('') String currentTag,
  }) = _YoutubeState;
}
