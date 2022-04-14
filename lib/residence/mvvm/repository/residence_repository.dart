import 'package:tutorial/residence/mvvm/api/residence_api.dart';
import 'package:tutorial/residence/mvvm/model/residence_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final residenceRepositoryProvider =
    Provider<ResidenceRepository>((_) => ResidenceRepository());

class ResidenceRepository {
  ResidenceApi _api = ResidenceApi.create();

  Future<List<ResidenceItem>> fetchResidenceItems() async {
    return _api.fetchResidenceItems();
  }
}
