import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/todo_app/todo_db.dart';

final todoRepository = Provider(
  (ref) => todoRepository(),
);

class TodoRepository {
  MyDatabase database = MyDatabase();
  Future getAllTodoData() async {
    return database.readAllTodoData;
  }

  Future insertTodoData(todo) async {
    return await database.writeTodo(todo);
  }

  Future deleteTodoData(int id) async {
    return await database.deleteTodo(id);
  }
}
