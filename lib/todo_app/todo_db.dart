import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'todo_db.g.dart';

class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 50)();
  TextColumn get description => text().withLength(min: 1, max: 50)();
  DateTimeColumn get addDate => dateTime()();
  DateTimeColumn get limitDate => dateTime()();
}

TodoDatabase _openConnection() {
  return TodoDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Todos])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get shemaVersion => 1;

  Future<List<Todo>> readAllTodoData() => select(todos).get();

  Future writeTodo(TodosCompanion todo) => into(todos).insert(todo);

  Future deleteTodo(int id) =>
      (delete(todos)..where((tbl) => tbl.id.equals(id))).go();
}
