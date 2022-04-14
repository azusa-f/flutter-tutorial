import 'package:tutorial/youtube/model/youtube_item.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'youtube_api_client.g.dart';

@RestApi(baseUrl: "https://json-hosting-25647.web.app/api/v1/")
abstract class YoutubeApiClient {
  factory YoutubeApiClient(Dio dio, {String baseUrl}) = _YoutubeApiClient;

  static YoutubeApiClient create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return YoutubeApiClient(dio);
  }

  @GET("/youtube.json")
  Future<List<YoutubeItem>> fetchYoutubeItems();
}
