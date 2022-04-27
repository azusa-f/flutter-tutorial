import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'money_diary_db.g.dart';

class Payments extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get amount => integer()();
  DateTimeColumn get addDate => dateTime()();
  IntColumn get category => integer()();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.splite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Payments])
class MoneyDiaryDatabase extends _$MoneyDiaryDatabase {
  MoneyDiaryDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<Payment>> get readAllPayments => select(payments).get();
}
