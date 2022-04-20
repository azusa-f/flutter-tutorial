import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'todo_db.g.dart';

class TodoItems extends Table {
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

@DriftDatabase(tables: [TodoItems])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get shemaVersion => 1;

  Future<List<TodoItemData>> readAllTodoData() => select(TodoItems).get();

  Future writeTodo(TodoItemCompanion data) => into(TodoItems).insert(data);

  Future updateTodo(TodoItemData data) => update(TodoItems).replace(data);

  Future deleteTodo(int id) =>
      (delete(todoItem)..where((it) => it.id.equals(id))).go();
}
