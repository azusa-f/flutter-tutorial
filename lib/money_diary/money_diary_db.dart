import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:tutorial/money_diary/payment_totalling.dart';

part 'money_diary_db.g.dart';

class Payments extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get amount => integer()();
  DateTimeColumn get usedDate => dateTime()();
  TextColumn get category => text()();
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

  Future writePayment(PaymentsCompanion payment) =>
      into(payments).insert(payment);

  Future deletePayment(int id) =>
      (delete(payments)..where((tbl) => tbl.id.equals(id))).go();
}
