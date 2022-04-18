import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tutorial/residence/mvvm/model/residence_item.dart';

part 'residence_api.g.dart';

@RestApi(baseUrl: 'https://json-hosting-25647.web.app/api/v1')
abstract class ResidenceApi {
  factory ResidenceApi(
    Dio dio, {
    String baseUrl,
  }) = _ResidenceApi;

  static Future<ResidenceApi> create() async {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return ResidenceApi(dio);
  }

  @GET('/residence.json')
  Future<List<ResidenceItem>> fetchResidenceItems();
}
