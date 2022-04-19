// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _YoutubeApiClient implements YoutubeApiClient {
  _YoutubeApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://json-hosting-25647.web.app/api/v1/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<YoutubeItem>> fetchYoutubeItems() async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final headers = <String, dynamic>{};
    final data = <String, dynamic>{};
    final result = await _dio.fetch<List<dynamic>>(
      _setStreamType<List<YoutubeItem>>(
        Options(method: 'GET', headers: headers, extra: extra)
            .compose(
              _dio.options,
              '/youtube.json',
              queryParameters: queryParameters,
              data: data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl),
      ),
    );
    var value = result.data!
        .map((dynamic i) => YoutubeItem.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
