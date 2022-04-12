// import 'package:tutorial/residence/mvvm/residence_item.dart';
// import 'package:dio/dio.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// import 'package:retrofit/retrofit.dart';

// part 'residence_api_client.g.dart';

// @RestApi(baseUrl: "https://json-hosting-25647.web.app/api/v1/")
// abstract class ResidenceApiClient {
//   factory ResidenceApiClient(Dio dio, {String baseUrl}) = _ResidenceApiClient;

//   static ResidenceApiClient create() {
//     final dio = Dio();
//     dio.interceptors.add(PrettyDioLogger());
//     return ResidenceApiClient(dio);
//   }

//   @GET("/residence.json")
//   Future<List<ResidenceItem>> fetchResedenceItems();
// }
