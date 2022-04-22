import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutorial/todo_app/todo_db.dart';
import 'package:tutorial/todo_app/todo_state_notifier.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _state = ref.watch(todoStateNotifier);
    final _notifier = ref.watch(todoStateNotifier.notifier);

    return Scaffold(
        body: _buildTodoList(_state, _notifier),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showEditDialog(context);
          },
          child: const Icon(Icons.edit),
        ));
  }
}

_showEditDialog(BuildContext context) {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _description =  TextEditingController();
  final _

  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: SizedBox(
          height: 300,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "タイトルを入力してください",
                    icon: Icon(Icons.text_fields_outlined),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '入力してください';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "内容を入力してください",
                    icon: Icon(Icons.notes),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '入力してください';
                    }
                    return null;
                  },
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      hintText: '期限を選択してください',
                      icon: Icon(Icons.calendar_today),
                    ),
                    onTap: () async {
                      final _date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2022),
                        lastDate: DateTime(2023),
                        helpText: '日付を選択',
                        cancelText: 'キャンセル',
                        confirmText: '決定',
                      );
                    },),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget _buildTodoList(_state, _notifier) {
  return Stack(
    children: [
      Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: _state.todoItems.length,
          itemBuilder: ((context, index) {
            final _todoData = _state.todoItems[index];
            return Slidable(
              endActionPane:
                  ActionPane(motion: const ScrollMotion(), children: [
                SlidableAction(
                  onPressed: (context) {
                    _notifier.deleteTodoData(_todoData.id);
                  },
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                )
              ]),
              child: SizedBox(
                width: double.infinity,
                child: Column(children: [
                  _buildToDo(_todoData),
                ]),
              ),
            );
          }),
        ),
      )
    ],
  );
}

Widget _buildToDo(Todo todoItems) {
  DateFormat outputFormat = DateFormat('yyyy-MM-dd');
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('タイトル:${todoItems.title}'),
          Text(todoItems.description, style: const TextStyle(fontSize: 24)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('作成日:${outputFormat.format(todoItems.addDate)}'),
              const SizedBox(
                width: 30,
              ),
              Text(
                '期日:${outputFormat.format(todoItems.limitDate)}',
                style:
                    const TextStyle(color: Color.fromARGB(255, 211, 127, 17)),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
