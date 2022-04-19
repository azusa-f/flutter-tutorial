import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/mvvm/api/qiita_api_client.dart';
import '/mvvm/model/qiita_item.dart';

final qiitaRepositoryProvider =
    Provider<QiitaRepository>((_) => QiitaRepository());

class QiitaRepository {
  final QiitaApiClient _api = QiitaApiClient.create() as QiitaApiClient;

  Future<List<QiitaItem>> fetchQiitaItems(String tag) async {
    return _api.fetchQiitaItems(tag);
  }
}
