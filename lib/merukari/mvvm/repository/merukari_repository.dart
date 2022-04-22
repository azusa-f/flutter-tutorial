import 'package:tutorial/merukari/mvvm/api/merukari_api.dart';
import 'package:tutorial/merukari/mvvm/model/merukari_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final merukariRepositoryProvider =
    Provider<MerukariRepository>((_) => MerukariRepository());

class MerukariRepository {
  final MerukariApi _api = MerukariApi.create();

  Future<List<MerukariItem>> fetchMerukariItems() async {
    return _api.fetchMerukariItems();
  }
}
