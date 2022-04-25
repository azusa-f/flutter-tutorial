import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tutorial/merukari/mvvm/model/merukari_item.dart';

part 'merukari_api.g.dart';

@RestApi(baseUrl: 'https://json-hosting-25647.web.app/api/v1')
abstract class MerukariApi {
  factory MerukariApi(Dio dio, {String baseUrl}) = _MerukariApi;

  static MerukariApi get create {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return MerukariApi(dio);
  }

  @GET('/merukari.json')
  Future<List<MerukariItem>> fetchMerukariItems();
}
