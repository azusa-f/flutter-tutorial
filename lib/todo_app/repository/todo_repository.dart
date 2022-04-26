import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/todo_app/todo_db.dart';

final todoRepository = Provider(
  (ref) => TodoRepository(),
);

class TodoRepository {
  MyDatabase database = MyDatabase();
  Future<List<Todo>> getAllTodoData() async {
    final todoList = database.readAllTodoData;
    return todoList;
  }

  Future insertTodoData(todo) async {
    return await database.writeTodo(todo);
  }

  Future deleteTodoData(int id) async {
    return await database.deleteTodo(id);
  }
}
