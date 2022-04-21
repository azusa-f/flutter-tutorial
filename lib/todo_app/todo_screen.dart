import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutorial/todo_app/todo_db.dart';
import 'package:tutorial/todo_app/todo_state_notifier.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _state = ref.watch(todoStateNotifier);
    final _notifier = ref.watch(todoStateNotifier.notifier);

    return Scaffold(
      body: _buildTodoList(_state, _notifier),
    );
  }
}

Widget _buildTodoList(_state, _notifier) {
  return Stack(
    children: [
      Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: _state.todoItems.length,
          itemBuilder: ((context, index) {
            return SizedBox(
              width: double.infinity,
              child: Column(children: [
                _buildToDo(_state.todoItems[index]),
              ]),
            );
          }),
        ),
      )
    ],
  );
}

Widget _buildToDo(Todo todoItems) {
  DateFormat outputFormat = DateFormat('yyyy-MM-dd');
  print(todoItems);
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('タイトル:${todoItems.title}'),
        Text(todoItems.description, style: TextStyle(fontSize: 24)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('作成日:${outputFormat.format(todoItems.addDate)}'),
            const SizedBox(
              width: 30,
            ),
            Text(
              '期日:${outputFormat.format(todoItems.limitDate)}',
              style: const TextStyle(color: Color.fromARGB(255, 211, 127, 17)),
            ),
          ],
        ),
      ],
    ),
  );
}
