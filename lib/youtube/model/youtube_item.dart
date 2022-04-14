import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_item.freezed.dart';
part 'youtube_item.g.dart';

@freezed
class YoutubeItem with _$YoutubeItem {
  const factory YoutubeItem({
    @JsonKey(name: "imagePath") String? imagePath,
    @JsonKey(name: "iconPath") String? iconPath,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "subTitle") String? subTitle,
  }) = _YoutubeItem;

  factory YoutubeItem.fromJson(Map<String, dynamic> json) =>
      _$YoutubeItemFromJson(json);
}
