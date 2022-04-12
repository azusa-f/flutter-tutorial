import 'package:tutorial/youtube/api/youtube_api_client.dart';
import 'package:tutorial/youtube/model/youtube_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final youtubeRepositoryProvider =
    Provider<YoutubeRepository>((_) => YoutubeRepository());

class YoutubeRepository {
  YoutubeApiClient _api = YoutubeApiClient.create();

  Future<List<YoutubeItem>> fetchYoutubeItems() async {
    return await _api.fetchYoutubeItems();
  }
}
