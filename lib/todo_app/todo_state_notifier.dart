import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutorial/todo_app/repository/todo_repository.dart';
import 'package:tutorial/todo_app/state/todo_client_state.dart';
import 'package:tutorial/todo_app/todo_db.dart';

final todoStateNotifier =
    StateNotifierProvider<TodoStateNotifier, TodoClientState>(
  (ref) => TodoStateNotifier(),
);

class TodoStateNotifier extends StateNotifier<TodoClientState> {
  TodoStateNotifier() : super(const TodoClientState()) {
    getTodoData();
  }

  final _repository = TodoRepository();
  Future getTodoData() async {
    state = state.copyWith(isLoading: true);

    final List<Todo> todos = await _repository.getAllTodoData();

    if (todos.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        isReadyData: true,
        todoItems: todos,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        isReadyData: false,
        todoItems: [],
      );
    }
  }
}
