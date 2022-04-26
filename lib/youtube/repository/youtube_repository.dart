import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/youtube/api/youtube_api_client.dart';
import 'package:tutorial/youtube/model/youtube_item.dart';

final youtubeRepositoryProvider =
    Provider<YoutubeRepository>((_) => YoutubeRepository());

class YoutubeRepository {
  YoutubeApiClient api = YoutubeApiClient.create();

  Future<List<YoutubeItem>> fetchYoutubeItems() async {
    return api.fetchYoutubeItems();
  }
}
