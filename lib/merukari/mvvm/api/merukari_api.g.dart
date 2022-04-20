// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merukari_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _MerukariApi implements MerukariApi {
  _MerukariApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://json-hosting-25647.web.app/api/v1';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<MerukariItem>> fetchMerukariItems() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<MerukariItem>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/merukari.json',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => MerukariItem.fromJson(i as Map<String, dynamic>))
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
