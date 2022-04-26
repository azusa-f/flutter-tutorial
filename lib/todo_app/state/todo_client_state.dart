import 'package:tutorial/todo_app/todo_db.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_client_state.freezed.dart';

@freezed
class TodoClientState with _$TodoClientState {
  const factory TodoClientState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    @Default([]) List<Todo> todoItems,
  }) = _TodoClientState;
}
